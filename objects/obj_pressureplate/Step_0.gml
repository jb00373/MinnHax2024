
var player = instance_place(x, y, obj_player)
var box = instance_place(x, y, obj_pushblock)
var chess = instance_place(x, y, obj_thing)

//Sprites for pressure plates
if pressed = true
	{
	sprite_index = spr_PPdown	
	}
if pressed = false
	{
	sprite_index = spr_PPup	
	}
	
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
		instance_destroy(inst_504AAEC);
		if sfx1 = 0 //sound effect
			{
			sfx1 = 1;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
	}
//PARK PRESSURE PLATE - right side
if room = r_park && x = 658
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
			instance_create_depth(192, 224, 1, obj_door)
			if sfx2 = 0 //sound effect
			{
			sfx2 = 1;	
			audio_play_sound(s_activate, 5, 0, 0.25)
			}
			}
	}

//CHESS PRESSURE PLATE - to exit maze
if room = r_chess && x = 180
	{
		if player != noone or chess != noone
			{
			pressed = true
			}
		else pressed = false
		if pressed = true
			{
			inst_3CFA8F24.y = -160
			}
		else inst_3CFA8F24.y = 160
	}


//HOME PRESSURE PLATE
if room = r_home
	{
		if player != noone or box != noone
			{
			pressed = true
			}
		else pressed = false
	}


