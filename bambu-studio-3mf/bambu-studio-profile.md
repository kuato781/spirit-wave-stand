# Bambu Studio Notes — Spirit WAVE Stand

The repository contains two prepared Bambu Studio projects:

- [mounting-hardware/SpiritWave_all_mounting_hardware.3mf](mounting-hardware/SpiritWave_all_mounting_hardware.3mf)
- [stand/SpiritWave-Stand.3mf](stand/SpiritWave-Stand.3mf)

The mounting hardware and stand are separated so they can be printed, reprinted and color-managed independently.

## Recommended material

The current physical build is printed in **PETG**.

Use a PETG profile appropriate for your printer and filament, and verify the printer, build plate, nozzle and filament mapping before slicing.

The supplied 3MF files are the preferred starting point because they preserve the prepared object arrangement and, for the stand, the separate black/red geometry used for multicolor printing.

## Stand color objects

The stand is organized around two visual groups:

1. **BLACK — structural core + header**
2. **RED — Spirit-S accent + outside edge**

The repository also includes individual STL/SCAD components and a merged STL for users who do not want to use the Bambu Studio project.

## Stand ironing

The physically validated cosmetic setup used **Topmost surface** ironing on the visible stand surfaces:

- Pattern: Rectilinear
- Speed: 25 mm/s
- Flow: 12%
- Line spacing: 0.18 mm
- Inset: 0.21 mm

These settings are intended for the cosmetic top surfaces. Vertical sidewalls are controlled by the model geometry and normal perimeter printing, not by ironing.

## Pre-print checks

Before starting a print:

- confirm all active objects are assigned to the intended PETG spools;
- verify the mounting-hardware and stand projects use the correct printer and plate;
- inspect the sliced preview for unexpected supports, gaps or missing color regions;
- confirm the stand's black/red objects remain aligned;
- inspect first layers before leaving the printer unattended.

## Assembly-sensitive printed features

Two printed areas deserve extra attention after printing:

- **M4 ball-plunger insert collar:** because of the print geometry, the collar/opening may need a very light cleanup with a reamer before the insert seats cleanly.
- **Common case caps:** both caps are identical. Install the beveled edge away from the radio. A visible cap-to-body gap is normal after tightening to a good bite.

Do not remove excess material simply to make cosmetic gaps disappear; fit and secure clamping matter more than a flush seam.

## Transport note

The Spirit WAVE with this stand installed does **not** fit the stock Spirit case unless the case is modified.

The documented physical build is transported in a Spektrum two-radio case.
