
if instance_place(x, y, obj_pee)
	{
		sprite_index = spr_gamestop_pissed2;
		instance_destroy(obj_door);
		
		if !make_happy {
			obj_charles.happiness = true;
			make_happy = true;
		}


		

	}




