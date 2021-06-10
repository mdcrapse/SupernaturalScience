///WallmapCanSee(x, y, other_x, other_y)
/// Returns true if the line between the position has no walls.

with oWallmap {
    var length = ceil(
        point_distance(argument0, argument1, argument2, argument3) / wall_size);
    var dir = point_direction(argument0, argument1, argument2, argument3);
    var xx = floor(argument0 / wall_size);
    var yy = floor(argument1 / wall_size);
    for(var i = 0; i < length; i++) {
        var xspd = lengthdir_x(1, dir);
        var yspd = lengthdir_y(1, dir);
        if wallmap[
            clamp(xx + round(xspd * i), 0, width - 1),
            clamp(yy + round(yspd * i), 0, height - 1)
        ] != -1
        {
            return false;
        }
    }
    return true;
}
return true;

