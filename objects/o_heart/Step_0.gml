//heart falls
timer ++;
if timer = 2
	{
	y --;
	timer = 0;
	}


//heart moves right
if dir = 1
	{
	x ++;
	if x > right
		{
		dir = 2;	
		}
	}

//heart moves left
if dir = 2
	{
	x --;
	if x < left
		{
		dir = 1;	
		}
	}

//heart disappears after a while
if y > bottom
	{
	image_alpha = image_alpha - 0.1;
	if image_alpha < 0
		{
		instance_destroy();	
		}
	}





