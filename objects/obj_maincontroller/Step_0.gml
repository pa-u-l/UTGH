if (keyboard_check(vk_escape) && reset_timer == 0) {
	quit_timer++;	
} else {
	if (quit_timer > 0) {
		quit_timer -= 10;	
	}
}

if (keyboard_check(ord("R")) && quit_timer == 0) {
	reset_timer++;	
} else {
	if (reset_timer > 0) {
		reset_timer -= 10;	
	}
}

if (quit_timer == 120) { game_end(); }
if (reset_timer == 120) { game_restart(); }