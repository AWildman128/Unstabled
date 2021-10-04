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

//Function to decay to the next weapon
function decay() {
	if global.decayIndex != (array_length(global.decayOrder) - 1) {
		global.decayIndex++;
		instance_create_layer(0, 0, "Instances", global.decayOrder[global.decayIndex]);
		
		//Fix for a bug with firing delay
		with (global.decayOrder[global.decayIndex]) {
			state = gunStates.firing;
			alarm_set(0, room_speed * firingDelay);
		}
	}

	instance_destroy();
}

//Function to fire the uranium gun
function uraniumFire() {
	instance_create_layer(obj_uranium.x, obj_uranium.y, "Instances", obj_uraniumBullet);
	ammo--;
	if !ammo {
		decay()
	}
	
	alarm_set(0, room_speed * firingDelay);
	state = gunStates.firing;
}

//Function to fire the plutonium gun
function plutoniumFire() {
	instance_create_layer(obj_plutonium.x, obj_plutonium.y, "Instances", obj_plutoniumBullet);
	ammo--;
	if !ammo {
		decay();
	}
	
	alarm_set(0, room_speed * firingDelay);
		
	//Sets 2 extra alarms for the burst fire function
	alarm_set(1, room_speed * 0.1);
	alarm_set(2, room_speed * 0.2);
		
	state = gunStates.firing;
}

//Function to fire the californium gun
function californiumFire() {
	instance_create_layer(obj_californium.x, obj_californium.y, "Instances", obj_californiumBullet);
	ammo--;
	if !ammo {
		decay();
	}
	
	alarm_set(0, room_speed * firingDelay);
	state = gunStates.firing;
}

function thoriumFire() {
	instance_create_layer(obj_thorium.x, obj_thorium.y, "Instances", obj_thoriumBullet);
	ammo--;
	if !ammo {
		decay();
	}
	
	alarm_set(0, room_speed * firingDelay);
	state = gunStates.firing;
}

function einsteiniumFire() {
	instance_create_layer(obj_einsteinium.x, obj_einsteinium.y, "Instances", obj_einsteiniumBullet);
	ammo--;
	if !ammo {
		decay();
	}
	
	alarm_set(0, room_speed * firingDelay);
	state = gunStates.firing;
}