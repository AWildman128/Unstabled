//Shoots in a straight line when created
direction = obj_plutonium.image_angle;
speed = 10;
alarm_set(0, 0.7 * room_speed);
type = immunities.plutonium;
audio_play_sound(snd_rifle, 10, false);