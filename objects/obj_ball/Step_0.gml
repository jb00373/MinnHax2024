//BALL CODE FOR PARK
if room = r_park 
	{
//Throws ball to first section (maze)
if phase = 0 {
	if x < 272
	{
		x += ball_speed;
		camera_set_view_target(view_camera[0], self);

	}
	if y > 50
	{
		y -= ball_speed;
		camera_set_view_target(view_camera[0], self);
	}
	if x > 271 && y < 51
	{
		phase = 1;
		run_timer = true;

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
		x += ball_speed;
		camera_set_view_target(view_camera[0], self);
		}
	if y > 50
		{
		y -= ball_speed;
		camera_set_view_target(view_camera[0], self);
		}
	if x > 489 && y < 51
		{
			run_timer = true;
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
		x += ball_speed;
		camera_set_view_target(view_camera[0], self);
	}
	if y < 330
	{
		y += ball_speed;
		camera_set_view_target(view_camera[0], self);
	}
	if x > 719 && y > 329
	{
		phase = 5;
		run_timer = true;
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
		x += ball_speed;
		}
	if phase = 1 && instance_place(x, y, obj_charles) && held = false
		{
		obj_charles.happiness = true;
		phase = 0;
		}
	}

if run_timer {
	runCameraTimer();
}

function runCameraTimer() {
	if (!timer_running) {
		timer = 0;
		timer_running = true;
	}
	if (timer >= timer_length) {
		show_debug_message("timer reached the point!")
		camera_set_view_target(view_camera[0], obj_player);
		timer_running = false;
		run_timer = false;

	}
	else timer++;
	
}


// Inherit the parent event
event_inherited();

