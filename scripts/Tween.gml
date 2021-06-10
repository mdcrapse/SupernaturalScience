///Tween(var_name, end_value, time, optional_callback)
/// Starts a tween for the current instance.
/// Argument `time` is time in steps.

global._tween_inst[global._tween_num] = id;
global._tween_var[global._tween_num] = argument[0];
global._tween_end[global._tween_num] = argument[1];
global._tween_spd[global._tween_num] = (argument[1] - variable_instance_get(id, argument[0])) / argument[2];
global._tween_time[global._tween_num] = 0;
global._tween_max_time[global._tween_num] = argument[2];

// optional callback
if argument_count > 3 {
    global._tween_callback[global._tween_num] = argument[3];
} else {
    global._tween_callback[global._tween_num] = TweenVoid;
}

global._tween_num += 1;
