///FindZIndex()

if !variable_instance_exists(id, "_pre_depth_var_value") {
    _pre_depth_var_value = depth;
}

var viewx = view_xview[0] + view_wview[0] / 2;
var viewy = view_yview[0] + view_hview[0] / 2;
depth = _pre_depth_var_value + min(1, point_distance(x, y, viewx, viewy) / view_wview[0] / 2);
