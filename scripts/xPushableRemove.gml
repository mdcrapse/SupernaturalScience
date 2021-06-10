///xPushableRemove(id)
/// Remove the specified pushable.

global._pushable[argument0] = global._pushable[global._pushable_num - 1];
global._pushable_num -= 1;
