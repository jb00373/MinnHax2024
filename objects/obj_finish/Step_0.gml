
//COUNT DOWN FOR PLAYER TO MOVE TO NEXT ROOM
var player = instance_place(x, y, obj_player)
if player > 0
	{
	transition ++;	
	}
	
if transition > 30
	{
		if room = r_home
		{
			room_goto(r_park)
		}
		if room = r_park
		{
			room_goto(r_chess)
		}
		if room = r_chess
		{
			room_goto(r_gamestop)
		}
	
		if room = r_gamestop
		{
			room_goto(r_home)
		}
	}


