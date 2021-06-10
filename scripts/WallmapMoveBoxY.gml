///WallmapMoveBoxY(x, y, y_move)

var y1 = WallmapMoveY(argument0 - 4, argument1 + 4 * sign(argument2), argument2);
var y2 = WallmapMoveY(argument0 + 4, argument1 + 4 * sign(argument2), argument2);

if abs(argument1 - y1) > abs(argument1 - y2) {
    return y2 - 4 * sign(argument2);
} else {
    return y1 - 4 * sign(argument2);
}

