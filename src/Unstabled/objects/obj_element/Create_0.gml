//Sets up variables common to all the elements
ammo = global.startingAmmo[global.decayIndex];
decayTime = 7 //in seconds
firingDelay = 0; //default value, should be overwritten in normal use
state = gunStates.ready;

//Sets an alarm to decay
alarm_set(3, room_speed * decayTime);