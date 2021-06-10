///WallmapUpdateSides(wall_x, wall_y)

with oWallmap {
    var sides = 0;
    if wallmap[argument0, max(0, argument1 - 1)] != -1 {
        sides |= side_up;
    }
    if wallmap[min(width - 1, argument0 + 1), argument1] != -1 {
        sides |= side_right;
    }
    if wallmap[argument0, min(height - 1, argument1 + 1)] != -1 {
        sides |= side_down;
    }
    if wallmap[max(0, argument0 - 1), argument1] != -1 {
        sides |= side_left;
    }
    wallsides[argument0, argument1] = sides;
}

