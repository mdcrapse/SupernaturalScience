///WallmapDrawWallSides(side_sprite, x, y, z, sides)
/// This script is expected to be executed by `oWallmap`.

// east and west
var xoff = 0;
if argument1 < view_xview[0] + view_wview[0] / 2 {
    xoff = sprite_get_width(argument0);
}

if (xoff == 0 && ((argument4 & side_left) == 0)) || (xoff != 0 && ((argument4 & side_right) == 0)) {
    F3DDraw(
        argument0,
        0,
        argument1 + xoff,
        argument2,
        argument3 + sprite_get_height(argument0),
        argument1 + xoff,
        argument2 + sprite_get_width(argument0),
        argument3 + sprite_get_height(argument0),
        argument1 + xoff,
        argument2 + sprite_get_width(argument0),
        argument3,
        argument1 + xoff,
        argument2,
        argument3,
    );
}

// north and south
var yoff = 0;
if argument2 < view_yview[0] + view_hview[0] / 2 {
    yoff = sprite_get_width(argument0);
}

if (yoff == 0 && ((argument4 & side_up) == 0)) || (yoff != 0 && ((argument4 & side_down) == 0)) {
    F3DDraw(
        argument0,
        0,
        argument1,
        argument2 + yoff,
        argument3 + sprite_get_height(argument0),
        argument1 + sprite_get_width(argument0),
        argument2 + yoff,
        argument3 + sprite_get_height(argument0),
        argument1 + sprite_get_width(argument0),
        argument2 + yoff,
        argument3,
        argument1,
        argument2 + yoff,
        argument3,
    );
}
