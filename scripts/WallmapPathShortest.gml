///WallmapPathShortest(x, y, path)
/// Returns the direction towards the shortest path from the position.
/// Returns `-1` if the specified position can not reach the path.

if !instance_exists(oWallmap) {
    return -1;
}
var xx = floor(argument0 / oWallmap.wall_size);
var yy = floor(argument1 / oWallmap.wall_size);
// TODO: don't use magic constant
var short = 99999;
var dir = -1;

// up
if argument2[@ xx, yy - 1] != -1
    && argument2[@ xx, yy - 1] < short
{
    short = argument2[@ xx, yy - 1];
    dir = 90;
}
// right
if argument2[@ xx + 1, yy] != -1
    && argument2[@ xx + 1, yy] < short
{
    short = argument2[@ xx + 1, yy];
    dir = 0;
}
// down
if argument2[@ xx, yy + 1] != -1
    && argument2[@ xx, yy + 1] < short
{
    short = argument2[@ xx, yy + 1];
    dir = 270;
}
// left
if argument2[@ xx - 1, yy] != -1
    && argument2[@ xx - 1, yy] < short
{
    short = argument2[@ xx - 1, yy];
    dir = 180;
}

return dir;

