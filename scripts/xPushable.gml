///xPushable(push_scr)
/// Makes the current instance pushable.
/// `push_scr` is optional.

if argument_count == 0 {
    _pushable_scr = xPushableDefault;
} else {
    _pushable_scr = argument[0];
}

global._pushable[global._pushable_num] = id;
global._pushable_num += 1;
