///TrapWallToggle(instance_id)

with argument0 {
    on = !on;
    if on {
        WallmapSetWall(x, y, sWallTrapDoor);
    } else {
        WallmapSetWall(x, y, -1);
    }
}

