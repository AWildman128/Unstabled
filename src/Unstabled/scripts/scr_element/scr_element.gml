//This script contains all of the function the elements reference

//This function positions and angles the gun relative to the player
function position() {
	if instance_exists(obj_player) {
		x = obj_player.x;
		y = obj_player.y;

		//Points the gun in the direction of the mouse
		image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	}
}

//Function to fire the uranium gun
function uraniumFire() {
	if state == gunStates.ready {
		instance_create_layer(obj_uranium.x, obj_uranium.y, "Instances", obj_uraniumBullet);
		alarm_set(0, room_speed * firingDelay);
		state = gunStates.firing;
	}
}