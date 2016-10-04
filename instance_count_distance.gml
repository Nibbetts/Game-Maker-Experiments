#define instance_count_distance
//instance_count_distance(obj,x,y,radius,notme)
//for notme put noone or id (or one you don't want to include)
//distance is counted from origin
var m,n,o;
n = 0
m = 0
repeat(instance_number(argument0)){
    o = instance_find(argument0,n)
    if point_distance(argument1,argument2,o.x,o.y) <= argument3 && o != argument4 m += 1
    n += 1}
return(m)

