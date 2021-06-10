///WallmapDrawWallTop(side_sprite, top_sprite, x, y, z)

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
