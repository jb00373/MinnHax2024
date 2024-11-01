/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) {
	
	audio_play_sound(choose(s_bark1, s_bark2), 5, 0, 0.25)
	
	room_goto_next();
}