/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_green);
draw_set_halign(fa_center);
draw_set_font(pixelFont);

if room = r_start {
	draw_text(300, 300, "Press space to start!")
}

//Home at start
if room = r_home && o_music.room_checker = 0
	{
	draw_text(630, 300, "Exit")
	draw_text_ext_transformed(600, 165, "Press E to drink water/pee", 20, 300, 0.5, 0.5, 0);
	draw_text_ext_transformed(400, 322, "Use a box or yourself to activate pressure plates", 20, 300, 0.5, 0.5, 0);
	draw_text_ext_transformed(400, 230, "Press Q to pick up/drop", 20, 300, 0.5, 0.5, 0);
	draw_text_ext_transformed(384, 140, "WASD to move", 15, 300, 0.5, 0.5, 0)
	}

//home at end of day
if room = r_home && o_music.room_checker = 1
	{
	draw_text_ext_transformed(100, 130, "Great job Toaster! Why don't you have a nap?", 15, 160, 0.5, 0.5, 0)
	}
	
if room = r_park
	{
	draw_text_ext_transformed(145, 170, "Let's play fetch!", 15, 300, 0.5, 0.5, 0)
	draw_text_ext_transformed(340, 40, "Press Q to pick up/drop", 20, 300, 0.4, 0.4, 0)
	draw_text_ext_transformed(670, 130, "Press E to drink water/pee", 20, 150, 0.5, 0.5, 0)
	}
	
if room = r_chess
	{
	draw_text_ext_transformed(416, 160, "Help Leo get a checkmate with white", 20, 150, 0.5, 0.5, 0)
	draw_text_ext_transformed(600, 290, "Grab the correct piece from the maze and place it on the highlighted tile", 20, 250, 0.5, 0.5, 0)
	}
	





