//Step event sets up player controls, and calls the appropriate movement script
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyDash = keyboard_check_pressed(vk_shift);

//Executes normal movement
if state == playerStates.normal {
	normalPlayerMovement();
}

//Flips the sprite based on mouse position
if mouse_x > x {
	image_xscale = 1;
	
	//Also flips the gun
	if instance_exists(obj_element) {
		global.decayOrder[global.decayIndex].image_yscale = 1;
	}
}

else {
	image_xscale = -1
	
	if instance_exists(obj_element) {
		global.decayOrder[global.decayIndex].image_yscale = -1;
	}
}