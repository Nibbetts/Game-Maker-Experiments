#define vectors_add
//vectors_add(length1,direction1,length2,direction2,mode)
//mode = 0 return x
//mode = 1 return y
//mode = 2 return length
//mode = 3 return direction
x1 = lengthdir_x(argument0,argument1)+lengthdir_x(argument2,argument3)
y1 = lengthdir_y(argument0,argument1)+lengthdir_y(argument2,argument3)
if argument4 = 0 return x1
if argument4 = 1 return y1
if argument4 = 2 return point_distance(0,0,x1,y1)
if argument4 = 3 return point_direction(0,0,x1,y1)

