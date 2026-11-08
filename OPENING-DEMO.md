# Opening demo — local Godot test

Working title: **A Wedding in Tonga**. This branch implements the opening only.
Tested with Godot **4.7.2 stable**, standard edition, Compatibility renderer.

## Pull and run

From your existing repository checkout, first commit or stash any local work:

```powershell
git fetch origin
git switch --track origin/work/opening-demo-2026-11-09
```

If you already have the branch locally:

```powershell
git switch work/opening-demo-2026-11-09
git pull --ff-only
```

Import the repository's **project.godot** in Godot, let the SVG assets import,
then press **F5**. No plugins, paid assets, Python or external services are needed.
If already testing this branch, close Godot and run `git pull --ff-only` for the
illustrated artwork update. Reopen Godot and let the PNGs import.
The opening is now the default main scene on this branch.
The earlier prototype is still available at **scenes/main.tscn** (open it and press F6).
Do not merge this branch until the opening has been reviewed.

## Test route

1. Title: Play Now / Continue / Options / Info.
2. Play Now: a neutral grey identity silhouette exits the terminal.
3. Walk right towards the waiting driver with arrows/WASD, or click/tap the path.
4. Near the driver, press E/Enter/Space or click/tap the driver.
5. Choose **Ko au Sione.** or **Ko au Mele.** The arrival sprite changes immediately.
6. Select the thanks response, then agree to depart.
7. The driver and player approach the car automatically.
8. Exterior car scene: separate car/occupant/scenery layers, passing coconut palms
   and a church, two short dialogue exchanges.
9. Arrival at Popua ends the demo. Return to title or replay.

Try both identities. Esc or the Menu button saves and returns to the title.
Closing the window also saves. Continue restores the current dialogue checkpoint,
including either car node; boarding resumes from the airport forecourt.
Starting over asks before replacing an existing valid checkpoint.

Options: English captions, reduced motion, ambient volume. Reduced motion disables
character bob, travel scrolling, vehicle bob and fades; navigation still works.
There is no recorded voice. Quiet original synthetic ambience is generated at runtime.
The review build starts with English captions enabled.

## Local files

The demo writes only to Godot's `user://` directory:

- `opening_demo_v1.json`: versioned checkpoint, separate from the original save stub.
- `opening_options.cfg`: options.

Malformed or unsupported checkpoints disable Continue. A valid new run replaces them.
Checkpoint writes use a temporary file followed by rename.

## Repeatable engine checks

```powershell
& 'PATH-TO-GODOT-CONSOLE.exe' --headless --path . -- --opening-smoke
```

The built-in smoke route exercises both identities, entrance/movement, E interaction,
path flags and sprite selection, boarding, car nodes, arrival, disk checkpoint
overwrite, Continue, replay, corrupt saves, options and reduced motion.
It uses `opening_smoke_checkpoint.json` and removes that file when complete.
Normal progress and options are not overwritten.
Look for four `OPENING PASS` lines and no script/runtime errors.

For local render checks:

```powershell
& 'PATH-TO-GODOT-CONSOLE.exe' --path . -- --capture=title
& 'PATH-TO-GODOT-CONSOLE.exe' --path . -- --capture=airport
& 'PATH-TO-GODOT-CONSOLE.exe' --path . -- --capture=dialogue
& 'PATH-TO-GODOT-CONSOLE.exe' --path . -- --capture=car
& 'PATH-TO-GODOT-CONSOLE.exe' --path . -- --capture=arrival
```

These create ignored local `capture_*.png` files and exit without changing saves.

## Art, content and boundaries

- All visible scene artwork now uses the illustrated PNG assets in
  `assets/opening/generated/`, derived from this project's generated character,
  costume, Popua and exterior-car references. The opening no longer loads the old
  vector stand-ins.
- Separate high-overhead airport exploration map, larger airport conversation
  plate, travel background, Popua arrival plate, transparent characters and travel
  objects. Interface and text stay separate from backgrounds.
- Sione, Mele and the driver have four isolated idle directions. Movement uses
  direction switching and gentle bob, **not finished footstep animation cycles**.
  Alpha bounds are trimmed by the renderer and feet stay anchored consistently.
- Arrival costumes follow the generated costume card: Sione's teal T-shirt,
  tan shorts and sneakers; Mele's coral top, denim skirt and sneakers. Driver wears
  the patterned shirt and plain tupenu without a mat.
- The car has a fixed driver layer and separately drawn selected passenger.
  See the generated-assets README for source references and sheet layout.
- All Tongan dialogue, clothing and cultural framing remain **DR L.V.S REVIEW REQUIRED**.
  The name prompt is draft wording based on the requested opening. Other lines are
  reused from the repository's airport/core-path content.
- Uses the existing DialogueManager and GameState autoloads. The new dialogue JSON
  retains the frozen node/choice schema. The existing live dialogue files and
  autoload implementations are unchanged.
- No full overworld, wedding content, new mandatory language targets, backend or
  speech recognition. This is a bounded opening test, ending at Popua.

## Validation recorded

Godot 4.7.2 imported the illustrated PNG resources and parsed the opening successfully.
Both playable paths, generated-resource checks and save/resume smoke checks passed
headlessly. Airport exploration, conversation and car scenes were rendered with the
local Intel UHD Compatibility renderer and inspected for alpha, cropping, passenger
placement and dialogue clearance. Title and Popua arrival capture runs also completed.
Some capture shutdowns reported two ObjectDB instances at exit; no gameplay script
errors occurred. These automated capture runs are separate from ordinary F5 play.
This is not a claim of full-game, controller, mobile-device or cultural validation.
