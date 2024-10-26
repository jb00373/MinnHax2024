//BALL CODE FOR PARK
if room = r_park 
	{
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
if phase = 1 && instance_place(x, y, obj_charles) && held = false
	{
	x = 490;
	y = 50;
	obj_charles.happiness = true;
	instance_destroy(inst_696610A3) //barrier
	phase = 2;
	}
if phase = 2 && instance_place(x, y, obj_charles) && held = false
	{
	x = 720;
	y = 330;
	obj_charles.happiness = true;
	instance_destroy(inst_59F96402) //barrier
	instance_destroy(inst_2780CB56) //barrier
	phase = 3;
	}
	}

if room = r_home
	{
		
	}





// Inherit the parent event
event_inherited();

