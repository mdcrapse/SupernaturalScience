///ToggleLever(lever)

with oTrapShooter {
    if image_blend == argument0.image_blend {
        on = !on;
        if on {
            alarm[0] = irandom(shoot_time);
        }
    }
}

with oTrapBoulderSpawner {
    if image_blend == argument0.image_blend {
        alarm[0] = drop_time;
    }
}

with oTrapWall {
    if image_blend == argument0.image_blend {
        TrapWallToggle(id);
    }
}

with oKey {
    WallmapPathFind(x, y, 100, oMain.key_path);
    break;
}

