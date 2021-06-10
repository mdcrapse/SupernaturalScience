///PlayerHurt(player_id, attacker_id)
/// Hurts the specified player.

if !instance_exists(argument1) {
    exit;
}

with argument0 {
    if argument1.object_index == oTrapBoulder {
        hp = 0;
        alarm[0] = -1;
    }

    if alarm[0] == -1 {
        audio_play_sound(aHurtPlayer, 0, false);
        hp = max(hp - 1, 0);
        if hp <= 0 {
            GameOver();
        }
        alarm[0] = hurt_time;
    }
}

exit;
return argument1;

