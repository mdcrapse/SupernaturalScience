///MusicChange(sound_id)
/// Changes the song to the specified song.
/// Use `-1` for no song.

global._music_next_song = argument0;
if global._music_on {
    if audio_exists(global._music_snd_id) {
        audio_sound_gain(
            global._music_snd_id,
            0,
            global._music_gain_spd
        );
    }
}
