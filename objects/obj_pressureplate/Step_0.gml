
var player = instance_place(x, y, obj_player)
var box = instance_place(x, y, obj_pushblock)

//PARK PRESSURE PLATE - middle 1
if room = r_park && x = 448 
	{
		if player != noone or box != noone
			{
			pressed = true
			global.park1 = 1;
			}
		else 
			{
			pressed = false
			global.park1 = 0;
			}
	}
//PARK PRESSURE PLATE - middle 2
if room = r_park && x = 512 
	{
		if player != noone or box != noone
			{
			pressed = true
			global.park2 = 1;
			}
		else 
			{
			pressed = false
			global.park2 = 0;
			}
	}
//If both pressure plates are pressed, removes barrier
if global.park1 = 1 && global.park2 = 1
	{
		instance_destroy(inst_504AAEC)
	}
//PARK PRESSURE PLATE - right side
if room = r_park && x = 654
	{
		if player != noone or box != noone
			{
			pressed = true
			}
		else pressed = false
		if pressed = true
			{
			inst_8B1710.x = 1000
			}
		else inst_8B1710.x = 608
	}


//CHESS PRESSURE PLATE - start maze
if room = r_chess && x = 160
	{
		if player != noone && pressed = false
			{
			pressed = true
			instance_create_depth(192, 224, 1, obj_wall)
			}
	}



