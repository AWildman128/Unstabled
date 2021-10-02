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
	
	//Handles collisions
	//Checks if it will be meeting in the y direction, and stops the player in y if so
	if place_meeting(x, y + 1, obj_wall) {
		vspeed = 0;
		gravity = 0;
		
		//Adds friction if not moving
		if !(keyRight || keyLeft) {
			friction = maxFriction;
		}
		
		//Handle jumps in this area too to save an if statement
		if keyJump {
			vspeed = jumpSpeed;
			gravity = maxGravity;
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

}
