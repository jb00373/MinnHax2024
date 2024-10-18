// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hearts(){
instance_create_depth(choose(x - 15, x, x + 15),choose(y - 15, y, y + 15) , 0, o_heart)
instance_create_depth(choose(x - 15, x, x + 15),choose(y - 15, y, y + 15) , 0, o_heart)
instance_create_depth(choose(x - 15, x, x + 15),choose(y - 15, y, y + 15) , 0, o_heart)
}