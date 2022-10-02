cx1 = lerp(cx1, tx1, 0.5);
cy1 = lerp(cy1, ty1, 0.5);
cx2 = lerp(cx2, tx2, 0.5);
cy2 = lerp(cy2, ty2, 0.5);

draw_set_color(c_white);
draw_rectangle(cx1, cy1, cx2 + 5, cy2 + 5, false);
draw_set_color(c_black);
draw_rectangle(cx1 + 5, cy1 + 5, cx2, cy2, false);