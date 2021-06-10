///F3DY(y, z)
/// Returns the y position in fake 3D space.
/// This is useful for drawing fake 3D.

var half_h = view_hview[0] / 2;
return argument0 + (argument0 - (view_yview[0] + half_h)) / half_h * argument1;
