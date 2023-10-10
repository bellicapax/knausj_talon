#defines the commands that sleep/wake Talon
mode: all
-
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
^sleep all [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
^talon sleep [<phrase>]$: speech.disable()
^quiet: 
    speech.disable()
    user.mouse_sleep()
^(reddy | ready) spaghetti+$: speech.enable()
^parrot sleep [<phrase>]$: mode.disable("noise")
^(parrot wake)+$: mode.enable("noise")