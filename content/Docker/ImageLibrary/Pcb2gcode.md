## Pcb2gcode web application wrapper

> Никогда в разработке не используйте русские имена файлов и каталогов!
> Никогда в разработке не используйте пробелы и спец.символы в именах файлов и каталогов!

Allows users to create projects and add their gerber files to convert them to gcode.
I use this project to engrave my PCB with my 3D printer equipped with a UV laser installed in the extrusion head.

The 'gcode position' tab contains a gcode script where the head will move along the PCB borders to help you to place it in the bed.
The 'gcode back side' tab contains the result of the pcb2gcode work.
The 'gcode removal' tab contains a gcode script where the head will move anywhere in the board to remove all the remaining resin (last cleaning step).