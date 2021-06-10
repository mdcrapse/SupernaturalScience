///MusicSong()
/// Returns the current song (sound resource index).
/// Returns -1 if there is no current song.

if audio_exists(global._music_song) {
    return global._music_song;
} else {
    return -1;
}
