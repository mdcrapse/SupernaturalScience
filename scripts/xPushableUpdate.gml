///xPushableUpdate()
/// Updates all the pushable instances.

xPushableClean();

var near_plr;
near_plr = array_create(0);

with oPlayer {
    for(var i = 0; i < global._pushable_num; i++) {
        var inst = global._pushable[i];
        if point_distance(x, y, inst.x, inst.y) < 192 {
            ArrayPush(near_plr, inst);
        }
    }
}

for(var i = 0; i < array_length_1d(near_plr); i++) {
    var inst = near_plr[i];
    with inst {
        script_execute(inst._pushable_scr, near_plr);
    }
}
