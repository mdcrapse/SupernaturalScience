///TweenRemove(id)
/// This remove the tween at the specified id.
/// This script is not meant to be used by the user.

global._tween_num -= 1;

global._tween_inst[argument0] = global._tween_inst[global._tween_num];
global._tween_var[argument0] = global._tween_var[global._tween_num];
global._tween_end[argument0] = global._tween_end[global._tween_num];
global._tween_spd[argument0] = global._tween_spd[global._tween_num];
global._tween_time[argument0] = global._tween_time[global._tween_num];
global._tween_max_time[argument0] = global._tween_max_time[global._tween_num];
global._tween_callback[argument0] = global._tween_callback[global._tween_num];
