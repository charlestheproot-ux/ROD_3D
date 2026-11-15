// move

var _dist = distance_to_object(obj_player);
var _move_x = 0, _move_y = 0;
if (_dist > 100)
{
	direction += 4;
}



_move_x = lengthdir_x(move_speed, direction);
_move_y = lengthdir_y(move_speed, direction);

move_and_collide(_move_x, _move_y, [obj_wall, obj3D, obj_player]);
