///TweenInit()
/// Initializes tweening.
/// This script is called automatically with gml_pragma("global", "...").

// comment this line out if you don't want default initialization
gml_pragma("global", "TweenInit()");

// TODO: use one large array for efficiency when removing tweens

global._tween_num = 0;
global._tween_inst = array_create(0);
global._tween_var = array_create(0);
global._tween_end = array_create(0);
global._tween_spd = array_create(0);
global._tween_time = array_create(0);
global._tween_max_time = array_create(0);
global._tween_callback = array_create(0);
