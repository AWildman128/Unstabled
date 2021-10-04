//Draws the GUI
//Ammo counter

if instance_exists(obj_element) {
	draw_text(512, 8, "Ammo: " +
	string(instance_nearest(0, 0, obj_element).ammo) + "/" + string(global.startingAmmo[global.decayIndex]));
}

else {
	draw_text(512, 8, "Ammo: 0/1"); //sloppy solution but works in this case
}
	

//Element Symbol
draw_sprite(global.elementIcons[global.decayIndex], -1, 512, 32);

//Decay countdown