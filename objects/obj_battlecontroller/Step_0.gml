#region Heart button movement
if (current_menu == -1) {
	// Set the button selection
	if (keyboard_check_pressed(vk_left) && button_select > 0) {
		button_select--;
	}
	if (keyboard_check_pressed(vk_right) && button_select < (button_count - 1)) {
		button_select++;
	}
	
	// Move the heart object
	if (button_select == 0) {
		obj_heart.x = (obj_fightbt.x + 16);
		obj_heart.y = (obj_fightbt.y + 21);
	} else if (button_select == 1) {
		obj_heart.x = (obj_actbt.x + 16);
		obj_heart.y = (obj_actbt.y + 21);
	} else if (button_select == 2) {
		obj_heart.x = (obj_itembt.x + 16);
		obj_heart.y = (obj_itembt.y + 21);
	} else if (button_select == 3) {
		obj_heart.x = (obj_mercybt.x + 16);
		obj_heart.y = (obj_mercybt.y + 21);
	}
	
	if (keyboard_check_pressed(ord("Z"))) {
		current_menu = button_select;	
	}
}
#endregion
#region Menu navigation
if (current_menu >= 0) {
	if (keyboard_check_pressed(ord("X"))) {
		if (menu_submenu > 0) {
			menu_submenu--;	
		} else {
			current_menu = -1;	
		}
	}
} else {
	if (keyboard_check_pressed(ord("X"))) {
		typer.skip();	
	}
}
#endregion