var spd = 2 / (keyboard_check(ord("X")) ? 2 : 1)

x -= (keyboard_check(vk_left) - keyboard_check(vk_right)) * spd;
y += (keyboard_check(vk_down) - keyboard_check(vk_up)) * spd;
