///PlayerDrawArrow(self, sprite, object)

with argument2 {
    var dir = point_direction(argument0.x, argument0.y, x, y);
    var dist = point_distance(argument0.x, argument0.y, x, y);
    if dist > 128 {
        dist = 128;
    }
    draw_sprite_ext(argument1, 0, argument0.x + lengthdir_x(dist, dir), argument0.y + lengthdir_y(dist, dir), 1, 1, 0, -1, 0.5);
}

