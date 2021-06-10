///WallmapPathFind(x, y, max_tiles_away, path_array)
/// Modifies the specifed path.

// TODO: simplify into seperate scripts

WallmapPathClear(argument3);

if !instance_exists(oWallmap) {
    exit;
}
var walls = oWallmap.wallmap;

// target
var tar_x = floor(argument0 / oWallmap.wall_size);
var tar_y = floor(argument1 / oWallmap.wall_size);

// assure inbounds
if !(tar_x >= 0
    && tar_x < oWallmap.width
    && tar_y >= 0
    && tar_y < oWallmap.height)
{
    exit;
}

// create path ends
var endx = ds_list_create();
ds_list_add(endx, tar_x);
var endy = ds_list_create();
ds_list_add(endy, tar_y);
var new_endx = ds_list_create();
var new_endy = ds_list_create();

// find path
var dist = 0;
while dist < argument2 {
    dist += 1;
    for(var i = 0; i < ds_list_size(endx); i++) {
        var xx = endx[|i];
        var yy = endy[|i];
        argument3[@ xx, yy] = dist;
    
        // up
        if endy[|i] > 0
            && argument3[@ xx, yy - 1] == -1
            && walls[@ xx, yy - 1] == -1
        {
            argument3[@ xx, yy - 1] = dist + 1;
            ds_list_add(new_endx, xx);
            ds_list_add(new_endy, yy - 1);
        }
        // right
        if endx[|i] < oWallmap.width - 1
            && argument3[@ xx + 1, yy] == -1
            && walls[@ xx + 1, yy] == -1
        {
            argument3[@ xx + 1, yy] = dist + 1;
            ds_list_add(new_endx, xx + 1);
            ds_list_add(new_endy, yy);
        }
        // down
        if endy[|i] < oWallmap.height - 1
            && argument3[@ xx, yy + 1] == -1
            && walls[@ xx, yy + 1] == -1
        {
            argument3[@ xx, yy + 1] = dist + 1;
            ds_list_add(new_endx, xx);
            ds_list_add(new_endy, yy + 1);
        }
        // left
        if endx[|i] > 0
            && argument3[@ xx - 1, yy] == -1
            && walls[@ xx - 1, yy] == -1
        {
            argument3[@ xx - 1, yy] = dist + 1;
            ds_list_add(new_endx, xx - 1);
            ds_list_add(new_endy, yy);
        }
    }
    
    if ds_list_empty(new_endx) {
        break;
    }
    ds_list_copy(endx, new_endx);
    ds_list_copy(endy, new_endy);
    ds_list_clear(new_endx);
    ds_list_clear(new_endy);
}

ds_list_destroy(endx);
ds_list_destroy(endy);
ds_list_destroy(new_endx);
ds_list_destroy(new_endy);

