#defines the commands that sleep/wake Talon
mode: all
-

^parrot sleep [<phrase>]$: mode.disable("noise")
^(parrot wake)+$: mode.enable("noise")