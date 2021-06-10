///MenuToggleVsync()

if display_get_windows_alternate_sync() {
    display_set_windows_alternate_sync(false);
    text = "vsync: off";
} else {
    display_set_windows_alternate_sync(true);
    text = "vsync: on";
}

