///MusicTurnOn()
/// Turns on (higher volume) the music if it was previously off.
/// Does nothing on web platforms.

if os_browser != browser_not_a_browser {
    exit;
}

if !global._music_on {
    global._music_on = true;
    if audio_exists(global._music_song) {
        if audio_exists(global._music_snd_id) {
            audio_sound_gain(global._music_snd_id, 1, global._music_gain_spd);
        } else {
            global._music_snd_id = audio_play_sound(
                global._music_song,
                global._music_priority,
                true);
        }
    }
}
