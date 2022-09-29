if (!main.debug.enabled) { exit; }

if (keyboard_check_pressed(ord("N"))) {
	main.visual.border_enabled = not main.visual.border_enabled
} else if (keyboard_check_pressed(ord("1"))) {
	main.visual.border = 0;	
} else if (keyboard_check_pressed(ord("2"))) {
	main.visual.border = 1;	
} else if (keyboard_check_pressed(ord("3"))) {
	main.visual.border = 2;	
} else if (keyboard_check_pressed(ord("4"))) {
	main.visual.border = 3;	
} else if (keyboard_check_pressed(ord("5"))) {
	main.visual.border = 4;	
} else if (keyboard_check_pressed(ord("6"))) {
	main.visual.border = 5;	
} else if (keyboard_check_pressed(ord("7"))) {
	main.visual.border = 6;	
}