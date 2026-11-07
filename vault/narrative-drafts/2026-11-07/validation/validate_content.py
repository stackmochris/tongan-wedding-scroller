"""Validate content only. Does not load or modify game code, or approve language."""
from pathlib import Path
import json,itertools,collections
ROOT=Path(__file__).resolve().parents[1]
nodes=json.loads((ROOT/'content/dialogue-draft.json').read_text())
english=json.loads((ROOT/'content/dialogue-ENGLISH-REVIEW-ONLY.json').read_text())
meta=json.loads((ROOT/'content/editorial-sidecar.json').read_text())
manifest=json.loads((ROOT/'manifest.json').read_text())
checks=[]
def check(name,condition):
    assert condition,name
    checks.append(name)
NF={'node_id','speaker','line_tongan','line_english','suppress_caption','requires_path','choices'}
CF={'tongan','caption','sets_flag','add_joiner','next'}
for id,n in nodes.items():
    assert set(n)==NF and n['node_id']==id
    assert isinstance(n['speaker'],str) and isinstance(n['line_tongan'],str)
    assert n['line_tongan'].startswith('[DR LVS PENDING:')
    assert n['line_english'] is None or isinstance(n['line_english'],str)
    assert type(n['suppress_caption']) is bool and n['requires_path'] in (None,'sione','mele')
    assert isinstance(n['choices'],list) and 1<=len(n['choices'])<=4
    if n['suppress_caption']:assert n['line_english'] is None
    for c in n['choices']:
        assert set(c)==CF and isinstance(c['tongan'],str) and c['tongan'].startswith('[DR LVS PENDING:')
        assert c['caption'] is None or isinstance(c['caption'],str)
        assert c['sets_flag'] is None or isinstance(c['sets_flag'],str)
        assert type(c['add_joiner']) is bool
        assert c['next'] is None or c['next'] in nodes
        if n['suppress_caption']:assert c['caption'] is None
        if n['requires_path'] and c['next']:assert nodes[c['next']]['requires_path']==n['requires_path']
    assert id in english and set(english[id])==NF
    assert len(english[id]['choices'])==len(n['choices'])==len(meta[id]['choices'])
check('Exact frozen fields, types, translation tokens, known links and preview parity',True)
def reach(start='airport_greeting',omit=None):
    seen=set();q=[start]
    while q:
        id=q.pop()
        if id in seen:continue
        seen.add(id)
        for i,c in enumerate(nodes[id]['choices']):
            if (id,i)==omit:continue
            if c['next']:q.append(c['next'])
    return seen
check('All nodes reachable from single opener',reach()==set(nodes))
check('Opener has exactly two valid identity choices',len(nodes['airport_greeting']['choices'])==2 and {c['sets_flag'] for c in nodes['airport_greeting']['choices']}=={'path_sione','path_mele'})
check('Selected identity cannot cross to other path',all(nodes[c['next']]['requires_path']==c['sets_flag'].removeprefix('path_') for c in nodes['airport_greeting']['choices']))
term=[id for id,n in nodes.items() if any(c['next'] is None for c in n['choices'])]
check('Only departure completion has terminal choices',set(term)=={'sione_i03_03','mele_i03_03'})
# Reverse reachability: every local loop permits an eventual completion route.
rev=collections.defaultdict(list)
for id,n in nodes.items():
    for c in n['choices']:
        if c['next']:rev[c['next']].append(id)
q=term[:];can_end=set()
while q:
    id=q.pop()
    if id not in can_end:can_end.add(id);q.extend(rev[id])
check('No dead ends: every node has a route to ending',can_end==set(nodes))
check('Both paths cover exactly nine areas',all({meta[x]['area'] for x in reach(p+'_a01_02')}==set(range(1,10)) for p in ('sione','mele')))
for p,slots in [('sione',6),('mele',4)]:
    for n in range(1,slots+1):
        flag=f'{p}_fragment_{n}_practised'
        setters=[(id,i) for id,node in nodes.items() for i,c in enumerate(node['choices']) if c['sets_flag']==flag]
        assert len(setters)==1
        assert p+f'_climax_{p}_start' not in reach(omit=setters[0])
    for stem in ['c03_01','f03_01']:
        dest=nodes[p+'_'+stem]['choices'][2]['next']
        for n in range(1,slots+1):
            # All slot introductions remain on the full selected route; F03 skip specifically retains final practice.
            if stem=='f03_01':assert (p+'_practice_'+p+'_6_1') in reach(dest)
        assert p+'_i03_03' in reach(dest)
check('Every climax slot requires a successful earlier model selection, even with cousin skips',True)
def step(id,choice=0):return nodes[id]['choices'][choice]['next']
def until(id,predicate):
    seen=set()
    while id is not None and not predicate(id):
        assert id not in seen,('Unexpected loop',id)
        seen.add(id);id=step(id)
    return id
for stage in range(1,7):
    id=f'sione_speech_{stage}_0'
    for strike in range(3):
        assert id==f'sione_speech_{stage}_{strike}'
        id=step(step(id,1),0)
    assert id=='sione_speech_reset'
    assert step(id)=='sione_climax_sione_start'
check('Third incorrect speech choice restarts speech only at every position',True)
# Errors are cumulative, not a correct-streak counter.
id='sione_speech_1_0'
id=step(step(id,1));assert id=='sione_speech_1_1'
id=step(step(id,0));assert id=='sione_speech_2_1'
id=step(step(id,1));assert id=='sione_speech_2_2'
id=step(step(id,0));assert id=='sione_speech_3_2'
id=step(step(id,1));assert id=='sione_speech_reset'
check('Correct speech choices do not erase prior errors',True)
id='sione_speech_1_0'
for stage in range(1,7):id=step(step(id,0))
check('Six correct speech positions reach wedding recognition',id=='sione_h02_01')
dance_cases=[]
for pattern in itertools.product([0,1],repeat=4):
    id='mele_dance_1_0';joiners=0;seen_flags=[]
    for ci in pattern:
        c=nodes[id]['choices'][ci];joiners+=int(c['add_joiner']);seen_flags.append(c['sets_flag'])
        id=step(c['next'])
    success=joiners>=3
    assert id==('mele_dance_success' if success else 'mele_dance_reset')
    if success:assert nodes[id]['choices'][0]['sets_flag']=='dance_complete' and step(id)=='mele_h02_01'
    else:assert step(id)=='mele_climax_mele_start'
    dance_cases.append(dict(choices=pattern,joiners=joiners,result='success' if success else 'sequence_retry'))
check('All 16 dance patterns obey proposed 3-of-4 threshold, including final miss after three successes',True)
check('Only productive Mele climax pair choices add joiners',all(n['requires_path']=='mele' and meta[id]['kind']=='climax_binary' for id,n in nodes.items() for c in n['choices'] if c['add_joiner']))
check('Every climax decision remains binary',all(len(nodes[id]['choices'])==2 for id in nodes if meta[id]['kind']=='climax_binary'))
for p in ('sione','mele'):
    for stem,flag in [('c04_05','will_help'),('d03_04','got_supplies'),('e02_04','time_confirmed'),('i03_03','story_complete')]:
        assert all(c['sets_flag']==flag for c in nodes[p+'_'+stem]['choices'])
check('Progress flags set on all valid scene-completion alternatives',True)
check('Visual-first car introduction suppresses node and choice captions in both modes',all(nodes[p+f'_b01_{i:02d}']['suppress_caption'] for p in ('sione','mele') for i in range(1,5)))
check('Pacing budget including reserve below six hours, onboarding nine minutes',sum(manifest['area_minutes'].values())+manifest['retry_reading_reserve']<=360 and manifest['area_minutes']['1']+manifest['area_minutes']['2']==9)
check('Content counts match manifest',manifest['node_count']==len(nodes) and manifest['choice_count']==sum(len(n['choices']) for n in nodes.values()))
# Optional world dictionary uses the same frozen schema, but ends locally.
optional=json.loads((ROOT/'content/overworld-dialogue-draft.json').read_text())
optmeta=json.loads((ROOT/'content/overworld-editorial-sidecar.json').read_text())
optpreview=json.loads((ROOT/'content/overworld-ENGLISH-REVIEW-ONLY.json').read_text())
bindings=json.loads((ROOT/'content/overworld-bindings.json').read_text())
for oid,n in optional.items():
    assert set(n)==NF and n['node_id']==oid and n['requires_path'] is None
    assert n['line_tongan'].startswith('[DR LVS PENDING:')
    assert set(optpreview[oid])==NF and len(optpreview[oid]['choices'])==len(n['choices'])
    assert type(n['suppress_caption']) is bool
    for c in n['choices']:
        assert set(c)==CF and c['sets_flag'] is None and c['add_joiner'] is False
        assert c['next'] is None or c['next'] in optional
        assert c['tongan'].startswith('[DR LVS PENDING:')
for binding in bindings:
    assert binding['entry'] in optional and binding['optional'] is True
    assert binding['max_required_seconds']==0 and binding['prerequisite']
    assert 'same area/position' in binding['return_policy']
    assert optional[binding['entry']]['choices'][1]['next'] is None
    response=optional[binding['entry']]['choices'][0]['next']
    assert optional[response]['choices'][0]['next'] is None
check('Eight optional encounters use exact frozen fields, have immediate exits and no core links/rewards',len(bindings)==8 and len(optional)==manifest['optional_node_count']==16)
check('Optional content does not collide with core IDs',not(set(optional)&set(nodes)))
check('Optional node/choice counts match manifest',sum(len(n['choices']) for n in optional.values())==manifest['optional_choice_count']==24)
scene_records=json.loads((ROOT/'content/scenes.json').read_text())
check('Approved surfaces attached to every scene',all(s['presentation']==('exterior_side_on_car' if s['area']==2 else 'top_down_route_with_larger_chibi_conversation') for s in scene_records))

report=dict(status='PASS_CONTENT_STRUCTURE_ONLY',checks=checks,node_count=len(nodes),choice_count=sum(len(n['choices']) for n in nodes.values()),scene_count=manifest['scene_count'],optional_node_count=len(optional),optional_choice_count=sum(len(n['choices']) for n in optional.values()),dance_cases=dance_cases,not_tested=['Tongan correctness','Cultural correctness','Authentic speech order or dance pairs','Actual Godot execution','Visual/phone presentation','Autosave/resume','Measured playtime or proficiency'])
(ROOT/'validation/results.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
