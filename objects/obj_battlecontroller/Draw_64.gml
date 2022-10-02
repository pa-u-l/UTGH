///@desc Draw text
if (current_menu == MENU.NONE) {
	var header = scribble("* ")
	.starting_format("dtmono", c_white)
	
	var hw = header.get_width();
	header.draw(50, 270);
	
	if (array_length(main.battle.text) == 1) {
		scribble(main.battle.text[0])
		.starting_format("dtmono", c_white)
		.wrap(502)
		.draw(hw + 50, 270, typer)
	}
}