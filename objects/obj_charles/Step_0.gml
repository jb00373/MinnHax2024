//code for randomized blinking
blink_timer ++;
if blink_timer = 60
	{
	sprite_index = choose(spr_charles, spr_charlesblink);
	blink_timer = 0;
	}
if sprite_index = spr_charlesblink
	{
	blink_timer2 ++;
	if blink_timer2 = 20
		{
		sprite_index = spr_charles
		blink_timer2 = 0;
		}
	}

//if level condition is met, makes character create hearts
if happiness = true
	{
	scr_hearts()
	happiness = false;
	}

//testing heart spawn, Can remove later
if (keyboard_check_pressed(ord("H")))
	{
	scr_hearts();	
	}


