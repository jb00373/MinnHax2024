/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_green);
draw_set_halign(fa_center);

//Home at start
if room = r_home && o_music.room_checker = 0
	{
	draw_text(630, 300, "Exit")
	draw_text(600, 165, "Press E to drink water/pee")
	draw_text_ext_transformed(400, 322, "Use a box or yourself to activate pressure plates", 15, 300, 0.75, 0.75, 0)
	draw_text(400, 230, "Press Q to pick up/drop")
	draw_text(384, 140, "WASD to move")
	}

//home at end of day
if room = r_home && o_music.room_checker = 1
	{
	draw_text_ext_transformed(100, 130, "Great job Toaster! Why don't you have a nap?", 15, 160, 0.75, 0.75, 0)
	}
	
if room = r_park
	{
	draw_text(145, 170, "Let's play fetch!")
	draw_text_ext_transformed(670, 114, "Press E to drink water/pee", 15, 150, 0.75, 0.75, 0)
	}
	
if room = r_chess
	{
	draw_text_ext_transformed(416, 160, "Help Leo get a checkmate with white", 15, 150, 0.75, 0.75, 0)
	draw_text_ext_transformed(600, 290, "Grab the correct piece from the maze and place it on the correct highlighted tile", 15, 250, 0.75, 0.75, 0)
	}
	





