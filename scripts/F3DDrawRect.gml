///F3DDrawRect(side_sprite, top_sprite, x, y, z)

// east and west
var xoff = 0;
if argument2 < view_xview[0] + view_wview[0] / 2 {
    xoff = sprite_get_width(argument0);
}

F3DDraw(
    argument0,
    0,
    argument2 + xoff,
    argument3,
    argument4 + sprite_get_height(argument0),
    argument2 + xoff,
    argument3 + sprite_get_width(argument0),
    argument4 + sprite_get_height(argument0),
    argument2 + xoff,
    argument3 + sprite_get_width(argument0),
    argument4,
    argument2 + xoff,
    argument3,
    argument4,
);

// north and south
var yoff = 0;
if argument3 < view_yview[0] + view_hview[0] / 2 {
    yoff = sprite_get_width(argument0);
}

F3DDraw(
    argument0,
    0,
    argument2,
    argument3 + yoff,
    argument4 + sprite_get_height(argument0),
    argument2 + sprite_get_width(argument0),
    argument3 + yoff,
    argument4 + sprite_get_height(argument0),
    argument2 + sprite_get_width(argument0),
    argument3 + yoff,
    argument4,
    argument2,
    argument3 + yoff,
    argument4,
);

// top side
F3DDraw(
    argument1,
    0,
    argument2,
    argument3,
    argument4 + sprite_get_height(argument0),
    argument2 + sprite_get_width(argument0),
    argument3,
    argument4 + sprite_get_height(argument0),
    argument2 + sprite_get_width(argument0),
    argument3 + sprite_get_width(argument0),
    argument4 + sprite_get_height(argument0),
    argument2,
    argument3 + sprite_get_width(argument0),
    argument4 + sprite_get_height(argument0),
);
