///WallmapMoveBoxX(x, y, x_move)

var x1 = WallmapMoveX(argument0 + 4 * sign(argument2), argument1 - 4, argument2);
var x2 = WallmapMoveX(argument0 + 4 * sign(argument2), argument1 + 4, argument2);

if abs(argument0 - x1) > abs(argument0 - x2) {
    return x2 - 4 * sign(argument2);
} else {
    return x1 - 4 * sign(argument2);
}

