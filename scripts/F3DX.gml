///F3DX(x, z)
/// Returns the x position in fake 3D space.
/// This is useful for drawing fake 3D.

var half_w = view_wview[0] / 2;
return argument0 + (argument0 - (view_xview[0] + half_w)) / half_w * argument1;
