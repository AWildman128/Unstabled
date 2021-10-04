//this ideally shouldn't have to check every step but it works
if(position_meeting(mouse_x, mouse_y, self)) {
	image_xscale = 3.05;
	image_yscale = 3.05;
	if mouse_check_button_pressed(mb_left) {
		game_end();
	}
}

else {
	image_xscale = 3;
	image_yscale = 3;
}