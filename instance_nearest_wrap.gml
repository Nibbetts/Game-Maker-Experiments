#define instance_nearest_wrap
//instance_nearest_wrap(obj,x,y,id,return_dist)
//id can be whatever instance (or object - for parenting?) that you don't want to include. Or noone.
//if return_dist = true it will return the distance instead of the id of the nearest object like normal.
//maximum distance checked is 1000000
var m,n,o,p,q;
n = 0
o = noone
p = 1000000
repeat(instance_number(argument0)){
    m = instance_find(argument0,n)
    q = point_dir_dist_wrap(argument1,argument2,m.x,m.y,1)
    if q < p && m != argument3 {p = q; o = m}
    n += 1}
if argument4 = true return(p) else return(o)

