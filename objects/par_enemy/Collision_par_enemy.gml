var push_dir = point_direction(other.x, other.y, x, y);
if (id > other.id) {
    var push_amt = 1;
    x += lengthdir_x(push_amt, push_dir);
    y += lengthdir_y(push_amt, push_dir);
}