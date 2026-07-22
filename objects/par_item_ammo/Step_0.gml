loot_alarm--
if loot_alarm > 0 exit;
if in_shop exit;

var dir = point_direction(x, y, obj_player.x, obj_player.y)
x += lengthdir_x(5, dir)
y += lengthdir_y(5, dir)