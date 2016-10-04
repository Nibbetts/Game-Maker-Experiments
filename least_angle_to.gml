#define least_angle_to
//least_angle_to(angle1,angle2)
//will give a positive or negative number whose value is <= 180; it is the number of degrees from angle1 to angle2.
//makes it past the 0/360 point perfectly.
var t;
t = argument1 - argument0
do {if t > 180 t -= 360; if t < -180 t += 360}
until (t >= -180 && t <= 180)
return(t)

