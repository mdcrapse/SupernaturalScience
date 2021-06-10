///MusicInit(music_enabled, music_priority, music_fall_spd)
/// Initializes the music.
/// This script is called automatically with gml_pragma("global", "...").

// comment this line out if you don't want default initialization
gml_pragma("global", "MusicInit(true, 255, 1000)");

global._music_on = argument0;
global._music_priority = argument1;
global._music_gain_spd = argument2; // the length for the change in gain in milliseconds
global._music_song = -1;
global._music_next_song = -1;
global._music_snd_id = -1;
