#region Menu stuff
current_menu = 0;
#endregion
#region Border stuff
border_x1 = 32;
border_y1 = 250;
border_x2 = 602;
border_y2 = 385;

border_x1a = border_x1;
border_y1a = border_y1;
border_x2a = border_x2;
border_y2a = border_y2;

battle_text = "it's kind of sad how the scribble wrap function doesnt work properly sometimes";
battle_typer = scribble_typist();

battle_typer.character_delay_add("!", 250);
battle_typer.character_delay_add("?", 250);
battle_typer.character_delay_add("-", 250);
battle_typer.character_delay_add(".", 250);

battle_typer.in(0.5, 0);
#endregion