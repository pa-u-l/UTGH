depth = OBJECT_DEPTH.BATTLE_GUI;

current_menu = MENU.NONE;
menu_submenu = 0;
menu_target = undefined;
button_select = 0;
button_count = 4;

typer = scribble_typist();
typer.in(0.5, 0);

bboard = instance_create_layer(0, 0, layer, obj_bulletboard);