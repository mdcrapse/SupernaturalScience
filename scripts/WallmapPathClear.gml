///WallmapPathClear(path_array)
/// Clears and resizes the path array.

if instance_exists(oWallmap) {
    for(var yy = 0; yy < oWallmap.height; yy++) {
        for(var xx = 0; xx < oWallmap.width; xx++) {
            argument0[@ xx, yy] = -1;
        }
    }
}

