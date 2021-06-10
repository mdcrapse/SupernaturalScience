///WallmapIsWall(x, y)
/// Returns true if the specified position has a wall.

with oWallmap {
    return wallmap[
        clamp(floor(argument0 / wall_size), 0, width - 1),
        clamp(floor(argument1 / wall_size), 0, height - 1)
    ] != -1;
}
return false;
