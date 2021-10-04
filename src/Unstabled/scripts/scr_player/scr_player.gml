//This file contains all of the movement scripts for the player
function normalPlayerMovement() {
	
	//Handles left / right movement
	if keyRight && hspeed < xSpeedMax {
		hspeed += xSpeed;
		friction = 0;
	}
	
	else if keyLeft && hspeed > -xSpeedMax {
		hspeed -= xSpeed;
		friction = 0;
	}
	
	//TODO: Implement platforms
	//Handles collisions
	//Checks if it will be meeting in the y direction, and stops the player in y if so
	if place_meeting(x, y + 1, obj_wall) {
		vspeed = 0;
		gravity = 0;
		
		//Adds friction if not moving
		if !(keyRight || keyLeft) && state != playerStates.dash {
			friction = maxFriction;
		}
		
		//Handles jumps in this area too to save an if statement
		if keyJump {
			vspeed = jumpSpeed;
			gravity = maxGravity;
		}
		
		//Code to start dashing
		if keyDash {
			dash()
		}
		
	}
	
	else {
		gravity = maxGravity;
		friction = 0;
	}

	//Checks the same for the x direction
	if place_meeting(x + hspeed, y, obj_wall) {
		hspeed = 0;
	}
		
}

//Function to handle player dashing
function dash() {
	state = playerStates.dash;
	sprite_index = spr_playerDash;
	
	//Sets a timer to reset the dash when over
	alarm_set(0, room_speed * 0.25);
	
	//Gives the character a large burst of speed in the mouse direction
	if mouse_x > x {
		hspeed = 10;
	}
	
	else {
		hspeed = -10
	}
}

//Script to kill the player
function die() {
	//Removes the gun
	instance_destroy(global.decayOrder[global.decayIndex]);
	
	//Resets the menu
	room_goto(deathRoom);
}