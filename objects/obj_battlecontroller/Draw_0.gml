///@desc Draw player info
// Draw name and lv
scribble(main.name + "   LV " + string(main.battle.player.love))
.starting_format("mnc", c_white)
.draw(30, 400);

// Draw health header
scribble("HP").starting_format("8bit", c_white).draw(240, 401);

// Calculate size for health bar
var __width = 280 + clamp((main.battle.player.maxhp * 1.2), 0, 118);
var __fill_width = __width * (main.battle.player.hp / main.battle.player.maxhp);

// Draw health bar and HP
if (main.battle.vars.karma_enabled == false) {
	if (is_infinity(main.battle.player.hp)) {
		draw_set_color(#1e1e1e)
		draw_rectangle(280, 400, 398, 420, false);
	} else {
		draw_set_color(c_red);
		draw_rectangle(280, 400, __width, 420, false);
		draw_set_color(c_yellow);
		draw_rectangle(280, 400, __fill_width, 420, false);	
	}
	
	scribble(get_hp_string())
	.starting_format("mnc", c_white)
	.draw(__width + 20, 400);
}