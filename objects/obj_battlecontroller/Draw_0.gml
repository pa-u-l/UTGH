#region Draw rectangle
border_x1a = lerp(border_x1a, border_x1, 0.25);
border_y1a = lerp(border_y1a, border_y1, 0.25);
border_x2a = lerp(border_x2a, border_x2, 0.25);
border_y2a = lerp(border_y2a, border_y2, 0.25);

draw_set_color(c_white);
draw_rectangle(border_x1a, border_y1a, border_x2a + 5, border_y2a + 5, false);
draw_set_color(c_black);
draw_rectangle(border_x1a + 5, border_y1a + 5, border_x2a, border_y2a, false);
draw_set_color(c_white);
#endregion
#region Draw menu text
var xx = border_x1 + 20;
var yy = border_y1 + 20;
	
var header = "* "
	
draw_set_font(fnt_dtmono);
var header_w = string_width(header);

if (current_menu == 0) {
	scribble(header)
	.starting_format("fnt_dtmono", c_white)
	.draw(xx, yy);
	
	scribble(battle_text)
	.fit_to_box(border_x2 - 128, infinity)
	.starting_format("fnt_dtmono", c_white)
	.draw(xx + header_w, yy, battle_typer);
}
#endregion
#region Draw player info
scribble(global.name + "    LV " + string(global.love))
.starting_format("fnt_mnc", c_white)
.draw(32, 400);

scribble("HP")
.starting_format("fnt_8bit", c_white)
.draw(240, 401);

var hp_perc = (global.hp / global.maxhp);
var hp_width = global.maxhp

draw_set_color(c_red)
draw_rectangle(280, 400, 280 + hp_width, 420, false);
draw_set_color(c_yellow)
draw_rectangle(280, 400, (280 + hp_width) * hp_perc, 420, false);
	
var hp_str_offset = 20 + (global.karma_enabled * 40)

if (global.karma_enabled) {
	scribble("KR")
	.starting_format("fnt_8bit", c_white)
	.draw(280 + hp_width + 15, 401);
}

scribble(string(global.hp) + " / " + string(global.maxhp))
.starting_format("fnt_mnc", c_white)
.draw(280 + hp_width + hp_str_offset, 400);
#endregion