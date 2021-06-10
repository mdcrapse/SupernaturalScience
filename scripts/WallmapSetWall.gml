///WallmapSetWall(x, y, wall)

with oWallmap {
    var xx = floor(argument0 / wall_size);
    var yy = floor(argument1 / wall_size);
    
    wallmap[xx, yy] = argument2;

    // up
    WallmapUpdateSides(xx, yy - 1);
    // right
    WallmapUpdateSides(xx + 1, yy);
    // down
    WallmapUpdateSides(xx, yy + 1);
    // left
    WallmapUpdateSides(xx - 1, yy);
    break;
}

