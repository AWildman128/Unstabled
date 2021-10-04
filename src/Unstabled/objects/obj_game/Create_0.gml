//Sets up states
enum playerStates {
	normal,
	dash,
	damaged, //for I-frames
}

//TODO: figure out these states
enum aiStates {
	throwerReady,
	throwerCooldown
}

enum immunities {
	uranium,
	plutonium,
	thorium,
	californium,
	einsteinium
}

enum gunStates {
	firing,
	ready
}

//Creates a list for the decay
global.decayOrder = [obj_uranium, obj_plutonium, obj_californium, obj_thorium, obj_einsteinium];
global.startingAmmo = [7, 15, 15, 4, 1];
global.decayIndex = 0;
global.elementIcons = [spr_uIcon, spr_puIcon, spr_cfIcon, spr_thIcon, spr_esIcon];

//Creates the first gun
instance_create_layer(0, 0, "Instances", global.decayOrder[global.decayIndex]);

//Saves the current level
global.currentLevel = room;