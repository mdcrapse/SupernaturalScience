///PlayerDrawHudAbility(sprite, id, num, max)

scale = min(
    display_get_gui_width() / 480,
    display_get_gui_height() / 270,
);

var spr_h = sprite_get_height(sPlayerHudAbility) * scale;
var padding = 3 * scale;
var yy = 270 * scale - (spr_h + padding) * argument1;

draw_sprite_ext(
    sPlayerHudAbility,
    0,
    padding,
    yy,
    scale,
    scale,
    0,
    -1,
    1,
);
draw_sprite_ext(
    argument0,
    0,
    padding + scale,
    yy + scale,
    scale,
    scale,
    0,
    -1,
    1,
);

// bar
var bar_start = 10 * scale;
var bar_width = 48 * scale;

var draw_col = draw_get_colour();
var draw_a = draw_get_alpha();
draw_set_colour(c_green);
draw_set_alpha(0.75);
draw_rectangle(
    padding + bar_start,
    yy + scale,
    padding + bar_start + bar_width * (argument2 / argument3),
    yy + scale + 8 * scale,
    false,
);
draw_set_alpha(draw_a);
draw_set_colour(draw_col);

