//Shoots in a straight line when created
direction = obj_uranium.image_angle;
speed = 10;
alarm_set(0, 0.7 * room_speed);
type = immunities.uranium;
audio_play_sound(snd_pistol, 10, false);