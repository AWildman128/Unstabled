//Fires the third round of the burst
instance_create_layer(obj_plutonium.x, obj_plutonium.y, "Instances", obj_plutoniumBullet);
ammo--;

if !ammo {
	decay();
}