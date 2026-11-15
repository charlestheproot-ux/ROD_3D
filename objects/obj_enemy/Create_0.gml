 move_speed = 2;
 
 sprite_dead = spr_enemy_dead;
 
 hp = 3;
 
 hit = function ()
 {
	 hp--;
	 
	 if (hp <= 0)
	 {
		 instance_create_depth(x, y, depth, obj_enemy_dead, {
			 sprite_index : sprite_dead
		 })
		 instance_destroy();
	 }
 }