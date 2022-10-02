display_set_gui_maximise();

#region Draw borders
if (window_get_fullscreen() && main.visual.border_enabled) {
	switch (main.visual.border) {
		case 0: draw_sprite(spr_border_simple, 0, 0, 0); break;
		case 1:	draw_sprite(spr_border_ruins, 0, 0, 0); break;
		case 2: draw_sprite(spr_border_snowdin, 0, 0, 0); break;
		case 3: draw_sprite(spr_border_waterfall, 0, 0, 0); break;
		case 4: draw_sprite(spr_border_hotland, 0, 0, 0); break;
		case 5: draw_sprite(spr_border_newhome, 0, 0, 0); break;
		case 6: draw_sprite(spr_border_truelab, 0, 0, 0); break;
	}
	
	if (main.visual.border >= 0) {
		draw_surface_stretched(application_surface, 320, 60, 1280, 960);	
	}
}
#endregion
#region Draw the quitting/restarting message
var qt_alpha = quit_timer / 120;
var rt_alpha = reset_timer / 120;

scribble("Quitting...")
.starting_format("mnc", c_white)
.blend(c_white, qt_alpha)
.draw(2, 0);

scribble("Restarting...")
.starting_format("mnc", c_white)
.blend(c_white, rt_alpha)
.draw(2, 0);
#endregion
#region Debug - draw fps
if (main.debug.enabled && main.debug.show_fps) {
	var xx = window_get_width();
	var fps_t = scribble("[scale,0.5]FPS: " + string(game_get_speed(gamespeed_fps)))
	.starting_format("dtmono", c_white)
	.align(fa_right, fa_top);
	
	var bbox = fps_t.get_bbox(xx, 0);
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(bbox.left, bbox.top, bbox.right, bbox.bottom, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	fps_t.draw(xx, 0);
}
#endregion
#region Debug - draw tracked variables
if (main.debug.show_tvars) {
	var __vars = main.debug.tracked_values;

	var __tvar_text = "Tracked variables:\n";
	var __var_count = 0;

	for (var i = 0; i < array_length(__vars); i++) {
		__var_count++;
		__tvar_text = __tvar_text + __vars[i] + ": " + string(variable_struct_path(main, __vars[i])) + "\n";
	}

	__tvar_text = "[scale,0.5][[" + string(__var_count) + "] " + __tvar_text

	if (__var_count == 0) { __tvar_text = __tvar_text + "<none>"; }

	var __tvar_sc = scribble(__tvar_text)
	.align(fa_right, fa_bottom)
	.starting_format("dtmono", c_white)

	var _bbox = __tvar_sc.get_bbox(window_get_width(), window_get_height());
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(_bbox.left, _bbox.top, _bbox.right, _bbox.bottom, false);
	draw_set_alpha(1);
	draw_set_color(c_white);

	__tvar_sc.draw(window_get_width(), window_get_height());	
}
#endregion