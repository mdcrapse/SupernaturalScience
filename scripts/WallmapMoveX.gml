///WallmapMoveX(x, y, x_move)
/// Returns the new x position with wall collisions.
/// If `x_move` is larger then `oWallmap.wall_size` then this script will return a incorrect result (you can walk through walls!).

var new_x = argument0 + argument2;
with oWallmap {
    if WallmapIsWall(new_x, argument1) {
        new_x = floor(argument0 / wall_size) * wall_size;
        var half_sz = wall_size / 2;
        new_x += half_sz;
        // `- 1` is for a pixel of padding
        new_x += (half_sz - 1) * sign(argument2);
    }
    return new_x;
}
return new_x;
