//Fires in the same direction as the gun, with a slower velocity and gravity
direction = obj_einsteinium.image_angle;
speed = 5;
gravity = 0.1;
alarm_set(0, 10 * room_speed);
audio_play_sound(snd_knife, 10, false);