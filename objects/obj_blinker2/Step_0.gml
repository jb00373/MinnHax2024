/// @description Insert description here
// You can write your code in this editor

if state = 0
	{
	image_alpha = image_alpha - 0.01;
	if image_alpha = 0
		{
		state = 1;	
		}
	}
if state = 1
	{
	image_alpha = image_alpha + 0.01;
	if image_alpha = 1
		{
		state = 0;	
		}
	}






