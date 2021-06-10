///xPushableDefault(others)
/// Pushes the instance out of other pushable instances.
/// This is the default callback for `xPushable`.

for(var i = 0; i < array_length_1d(argument0); i++) {
    var inst = argument0[@ i];
    if inst == id {
        continue;
    }
    if point_distance(x, y, inst.x, inst.y) < 16 {
        push_dir = point_direction(inst.x, inst.y, x, y);
        x = WallmapMoveBoxX(x, y, lengthdir_x(1, push_dir));
        y = WallmapMoveBoxY(x, y, lengthdir_y(1, push_dir));
    }
}
