//Destroys enemy on collision if not immune
if other.immunity == type {
	instance_destroy();
}

else {
	instance_destroy(other);
	instance_destroy();
}