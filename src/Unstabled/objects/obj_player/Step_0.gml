//Step event sets up player controls, and calls the appropriate movement script
keyRight = keyboard_check(ord("D"));
keyLeft = keyboard_check(ord("A"));
keyJump = keyboard_check_pressed(vk_space);
keyDown = keyboard_check(ord("S"));
keyDash = keyboard_check_pressed(vk_shift);

if state == playerStates.normal && keyDash {
	//Starts a timer for the end of the dash event
	state = playerStates.dash;
	alarm_set(0, room_speed * 0.5)
	dash();
}

//Executes normal movement otherwise
else if state == playerStates.normal {
	normalPlayerMovement();
}