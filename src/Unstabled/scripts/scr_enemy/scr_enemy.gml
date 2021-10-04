//Scripts to handle all enemy movement

//Function for simple enemies, which move until they hit a wall, then turn around
function simpleMovement() {
	if place_meeting(x, y + 1, obj_wall) {
		gravity = 0;
		vspeed = 0;
	}
	
	else {
		gravity = 0.2;
	}
	
	if place_meeting(x + hspeed, y, obj_wall) {
		hspeed = -hspeed;
		image_xscale = -image_xscale;
	}
}

//Function for simple2 enemies, who move until they hit a wall OR ledge, then turn around
function simple2Movement() {
	if place_meeting(x, y + 1, obj_wall) {
		gravity = 0;
		vspeed = 0;
	}
	
	else {
		gravity = 0.2;
	}
	
	if place_meeting(x + hspeed, y, obj_wall) || !place_meeting(x + hspeed, y + 1, obj_wall) {
		hspeed = -hspeed;
		image_xscale = -image_xscale;
	}
}

//Movement for horizontal floaters, who float back and forth like simple enemies
function hFloaterMovement() {
	
	if place_meeting(x + hspeed, y, obj_wall) {
		hspeed = -hspeed;
		image_xscale = -image_xscale;
	}
}

//Movement for horizontal floaters, who float back and forth like simple enemies
function vFloaterMovement() {
	
	if place_meeting(x, y + vspeed, obj_wall) {
		vspeed = -vspeed;
	}
}

//Code for throwing enemies
function thrower() {
	if point_distance(x, y, obj_player.x, obj_player.y) < (room_speed * 5 * 0.75) 
	&& state = aiStates.throwerReady {
		
		instance_create_layer(x, y, "Instances", obj_knife);
		alarm_set(1, room_speed);
		state = aiStates.throwerCooldown;
	}
}