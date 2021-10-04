//Creates an explosion on destruction
instance_create_layer(x, y, "Instances", obj_explosion);
audio_play_sound(snd_explosion, 10, false);