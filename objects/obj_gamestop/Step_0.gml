
if instance_place(x, y, obj_pee)
	{
		sprite_index = spr_gamestop_pissed;
		instance_destroy(obj_door);

		if sfx1 = 0 //sound effect
			{
			sfx1 = 1;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	}




