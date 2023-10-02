not mode: sleep
and not tag: user.gamepad_sleep
-

gamepad(dpad_up):           edit.up()
gamepad(dpad_down):         edit.down()
gamepad(dpad_left):         edit.left()
gamepad(dpad_right):        edit.right()

# gamepad(dpad_up):           user.gamepad_mouse_jump("up")
# gamepad(dpad_down):         user.gamepad_mouse_jump("down")
# gamepad(dpad_left):         user.gamepad_mouse_jump("left")
# gamepad(dpad_right):        user.gamepad_mouse_jump("right")

gamepad(west:down):         mouse_drag()
gamepad(west:up):           mouse_release()
gamepad(north:down):        mouse_drag(1)
gamepad(north:up):          mouse_release(1)
gamepad(east):              user.mouse_click("control")
gamepad(south:down):        user.gamepad_mouse_move_slow_toggle(false)
gamepad(south:up):          user.gamepad_mouse_move_slow_toggle(true)

# gamepad(select):            user.quick_pick_show()
# gamepad(start):             user.command_dictation_mode_toggle()

gamepad(l1:down):           user.gamepad_mouse_freeze(true)
gamepad(l1:up):             user.gamepad_mouse_freeze(false)
gamepad(r1):                user.gamepad_sleep_toggle()

gamepad(l2:change):         user.gamepad_scroll(0, value*-1)
gamepad(r2:change):         user.gamepad_scroll(0, value)

gamepad(left_xy:repeat):    user.gamepad_mouse_move(x, y*-1)
gamepad(l3):                user.gamepad_mouse_move_slow_toggle()

gamepad(right_xy):          user.gamepad_scroll(x, y*-1)
gamepad(r3):                user.gamepad_scroll_slow_toggle()
