///PlayerHitSpot(x, y, raduis, attacker)
/// Hurts enemies in the specified position within the specified raduis.

if !instance_exists(argument3) {
    exit;
}

with oEnemyHorde {
    if !WallmapCanSee(argument0, argument1, x, y) {
        continue;
    }
    if point_distance(x, y, argument0, argument1) < 8 + argument2 {
        CreateDeadBodyPart(sDeadHorde, x, y, point_direction(argument3.x, argument3.y, x, y));
        instance_destroy();
        audio_play_sound(aHitEnemy, 0, false);
    }
}

with oEnemyBrawler {
    if !WallmapCanSee(argument0, argument1, x, y) {
        continue;
    }
    if point_distance(x, y, argument0, argument1) < 8 + argument2 {
        //_walk_spd = 0;
        _walk_max_spd += hurt_spd_increase;
        hp -= 1;
        if hp <= 0 {
            CreateDeadBodyPart(sDeadBrawler, x, y, point_direction(argument3.x, argument3.y, x, y));
            instance_destroy();
        }
        audio_play_sound(aHitEnemy, 0, false);
    }
}

with oEnemyRanger {
    if !WallmapCanSee(argument0, argument1, x, y) {
        continue;
    }
    if point_distance(x, y, argument0, argument1) < 8 + argument2 {
        if argument3.object_index == oPlayerPunch {
            var plrx = 0;
            var plry = 0;
            with oPlayer {
                plrx = x;
                plry = y;
                break;
            }
            var dir = point_direction(plrx, plry, x, y) - 90;
            var bullets = 4;
            for(var i = 0; i < bullets; i++) {
                with instance_create(x, y, oEnemyBullet) {
                    direction = dir + i * 45;
                    image_angle = direction;
                }
            }
        } else {
            var bullets = 8;
            for(var i = 0; i < bullets; i++) {
                with instance_create(x, y, oEnemyBullet) {
                    direction = 360 / bullets * i;
                    image_angle = direction;
                }
            }
        }
        var smokes = 20;
        for(var i = 0; i < smokes; i++) {
            with instance_create(x, y, oPartSmoke) {
                dir = 360 / smokes * i;
            }
        }
        with instance_create(x, y, oPartExplodeMark) {
            sprite_index = sPartExplodeRanger;
        }
        instance_destroy();
        audio_play_sound(aHitEnemy, 0, false);
    }
}

// flip lever
with oTrapLever {
    if !WallmapCanSee(argument0, argument1, x, y) {
        continue;
    }
    if point_distance(x, y, argument0, argument1) < 8 + argument2 {
        on = !on;
        ToggleLever(id);
        audio_play_sound(aHitEnemy, 0, false);
    }
}

exit;

