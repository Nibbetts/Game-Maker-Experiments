#define point_dir_dist_wrap
//point_dir_dist_wrap(x1,y1,x2,y2,return_direction_or_distance)
//calculates direction with room edges wrapped (0 margin between).
var xdif ydif xdif2 ydif2 wrapx wrapy;
xdif = argument2 - argument0//+', -,'
ydif = argument3 - argument1

//if xdif >= 0 xdif2 = (room_width -argument0)+argument2 else xdif2 = argument0+(room_width -argument2)
//xdif2 = room_width-(signx*argument0)+(signx*argument2)
//xdif2 = room_width+(signx*(argument2-argument0))
//xdif2 = room_width -(sign(xdif)*(argument0-argument2)) //but won't have needed negative values!
//xdif2 = sign(xdif)*((argument2-argument0)-room_width) //should have negatives
//xdif2 = -(sign(xdif)*room_width-argument2+argument0)
xdif2 = sign(-xdif)*room_width +argument2-argument0
//ydif2 = room_height-(sign(ydif)*(argument1-argument3))
//ydif2 = sign(ydif)*((argument3-argument1)-room_height)
ydif2 = sign(-ydif)*room_height+argument3-argument1
wrapx = (abs(xdif2) < abs(xdif))
wrapy = (abs(ydif2) < abs(ydif))

if wrapx xdif = xdif2
if wrapy ydif = ydif2
if argument4 return(point_distance (argument0,argument1,argument0+xdif,argument1+ydif))
else         return(point_direction(argument0,argument1,argument0+xdif,argument1+ydif))

