speed = 7.5; 
var dir = point_direction(x, y, obj_player.x, obj_player.y);
direction = dir;
image_angle = dir;

alarm_set(0, room_speed * 0.75);