if (!instance_exists(obj_player)) exit;

var _dir = point_direction(obj_player.x, obj_player.y, x, y);
var _angle_diff = angle_difference(_dir, direction);
_angle_diff /= 90;
_angle_diff = round(_angle_diff);

