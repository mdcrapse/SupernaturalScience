///WallmapMoveY(x, y, y_move)
/// Returns the new y position with wall collisions.
/// If `y_move` is larger then `oWallmap.wall_size` then this script will return a incorrect result (you can walk through walls!).

var new_y = argument1 + argument2;
with oWallmap {
    if WallmapIsWall(argument0, new_y) {
        new_y = floor(argument1 / wall_size) * wall_size;
        var half_sz = wall_size / 2;
        new_y += half_sz;
        // `- 1` is for a pixel of padding
        new_y += (half_sz - 1) * sign(argument2);
    }
    return new_y;
}
return new_y;
