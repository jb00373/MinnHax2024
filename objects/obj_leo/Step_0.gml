//code for randomized blinking
blink_timer ++;
if blink_timer = 60
	{
	sprite_index = choose(spr_leo, spr_leo_blink);
	blink_timer = 0;
	}
if sprite_index = spr_leo_blink
	{
	blink_timer2 ++;
	if blink_timer2 = 20
		{
		sprite_index = spr_leo
		blink_timer2 = 0;
		}
	}

//if level condition is met, makes character create hearts
if happiness = true
	{
	scr_hearts()
	audio_play_sound(s_bark1, 1, false, 0.25);
	happiness = false;
	}

//testing heart spawn, Can remove later
//if (keyboard_check_pressed(ord("H")))
//	{
//	scr_hearts();	
//	}

if room = r_home && o_music.room_checker = 1
	{
	image_xscale = -0.13;
	x = 190;
	y = 160;
	}

