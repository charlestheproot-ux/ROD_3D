var _col = collision_line(xprevious, yprevious, x, y, obj_enemy, false, false);
if (_col != noone)
{
	_col.hit();
	instance_destroy();
}