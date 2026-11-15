//health
var _enemy = collision_circle(x, y, sprite_width*0.6, obj_enemy, false, false);
if (_enemy != noone && !immune)
{
	hp -= 5;
	immune = true;
	call_later(0.5, time_source_units_seconds, function(){
		immune = false;
	})
}

if (hp <= 0)
{
	room_restart();
}