///xPushableClean()
/// Removes all the instances on the pushable list that do not exist.

for(var i = 0; i < global._pushable_num; i++) {
    if !instance_exists(global._pushable[i]) {
        xPushableRemove(i);
        i -= 1;
        continue;
    }
}
