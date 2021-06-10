///MusicUpdate()
/// Updates the music.

if !global._music_on {
    exit;
}

var play_next = false;
if audio_exists(global._music_next_song) {
    if audio_exists(global._music_snd_id) {
        if audio_sound_get_gain(global._music_snd_id) <= 0.1 {
            audio_stop_sound(global._music_snd_id);
            play_next = true;
        }
    } else {
       play_next = true;
    }
}

if !play_next {
    exit;
}

global._music_song = global._music_next_song;
global._music_next_song = -1;

global._music_snd_id = audio_play_sound(
    global._music_song,
    global._music_priority,
    true);
    
audio_sound_gain(global._music_snd_id, 0, 0);
audio_sound_gain(global._music_snd_id, 1, global._music_gain_spd);
