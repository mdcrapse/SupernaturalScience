///WalkInDirection(direction)
/// Tries to make the current instance walk in the specified direction.

if is_undefined(_walk_fake_dir) {
    _walk_fake_dir = argument0;
} else {
    _walk_fake_dir -= angle_difference(_walk_fake_dir, argument0) / 2;
}
