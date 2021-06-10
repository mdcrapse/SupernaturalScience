///WalkUpdate()
/// Moves the current instance.

// TODO: simplify

if !is_undefined(_walk_fake_dir) {
    var ang_dif = angle_difference(_walk_real_dir, _walk_fake_dir);
    if abs(ang_dif) > _walk_stop_angle && _walk_spd > 0 {
        _walk_spd = max(0, _walk_spd - _walk_frc);
    } else {
        var turn_amount = sign(ang_dif) * _walk_turn;
        _walk_real_dir -= clamp(turn_amount + (ang_dif * max(0, (1 - _walk_spd / _walk_max_spd))), -abs(ang_dif), abs(ang_dif));
        
        if _walk_spd < _walk_max_spd {
            _walk_spd = min(_walk_spd + _walk_acc, _walk_max_spd);
        } else if _walk_spd > _walk_max_spd {
            _walk_spd = max(_walk_spd - _walk_frc, _walk_max_spd);
        }
    }
} else {
    if _walk_spd > 0 {
        _walk_spd = max(0, _walk_spd - _walk_frc);
    }
}
_walk_fake_dir = undefined;

// move instance
if _walk_spd > 0 {
    var pre_x = x;
    var pre_y = y;
    x = WallmapMoveBoxX(x, y, lengthdir_x(_walk_spd, _walk_real_dir));
    y = WallmapMoveBoxY(x, y, lengthdir_y(_walk_spd, _walk_real_dir));
    _walk_spd = point_distance(pre_x, pre_y, x, y);
}
