//BALL CODE FOR PARK
if room = r_park 
	{
//Throws ball to first section (maze)
if phase = 0 {
	if x < 272
		{
		x ++;	
		x ++;
		}
	if y > 50
		{
		y --;
		y --;
		}
	if x > 271 && y < 51
		{
		phase = 1;
		}
	}
//throws balls to second section (pressure plates)
if phase = 1 && instance_place(x, y, obj_charles) && held = false
	{
	obj_charles.happiness = true;
	instance_destroy(inst_696610A3) //barrier
	if sfx1 = 0 //sound effect
			{
			sfx1 = 1;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	phase = 2;
	}
if phase = 2 && held = false
	{
	if x < 490
		{
		x ++;	
		x ++;
		}
	if y > 50
		{
		y --;
		}
	if x > 489 && y < 51
		{
		phase = 3;
		}
	}
//throws ball to third section (fire hydrant)
if phase = 3 && instance_place(x, y, obj_charles) && held = false
	{
	obj_charles.happiness = true;
	instance_destroy(inst_59F96402) //barrier
	instance_destroy(inst_2780CB56) //barrier
	if sfx2 = 0 //sound effect
			{
			sfx2 = 5;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	phase = 4;
	}
if phase = 4 && held = false
	{
	if x < 720
		{
		x ++;	
		x ++;
		}
	if y < 330
		{
		y ++;
		}
	if x > 719 && y > 329
		{
		phase = 5;
		}
	}
if phase = 5 && instance_place(x, y, obj_charles) && held = false
	{
	obj_charles.happiness = true;
	instance_destroy(inst_24323414) //barrier to exit
	instance_destroy(inst_E3E74F1) //barrier to exit
	if sfx3 = 0 //sound effect
			{
			sfx3 = 5;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	phase = 6;
	}
	}
	
	
if room = r_home
	{
	if held = true
		{
		phase = 1;	
		}
	if phase = 0 && held = false && x < 500
		{
		x ++;
		x ++;
		}
	if phase = 1 && instance_place(x, y, obj_charles) && held = false
		{
		obj_charles.happiness = true;
		phase = 0;
		}
	}





// Inherit the parent event
event_inherited();

