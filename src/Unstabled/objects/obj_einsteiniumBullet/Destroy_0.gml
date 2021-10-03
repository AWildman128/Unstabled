//Teleports the player to where the bullet lands


//Tries several different positions to avoid getting stuck in walls upon teleport
//(there is likely a more efficient way to do this but whatever)

//Creates a 2d array of points (x, y) to test for collisions
//(bottom middle, bottom left, bottom right, top middle, top left, top right)
//This is designed around a 32x32 sprite with the center at 16, 16
var offsets = [[0, 16],[-16, 16],[16, 16],[0, -16],[-16, -16],[16, -16]];
var landingX = x;
var landingY = y;

for (var i = 0; i < array_length(offsets); i++) {
	with(obj_player) {
		if !place_meeting((landingX + offsets[i][0]), (landingY + offsets[i][1]), obj_wall) {
			x = landingX + offsets[i][0];
			y = landingY + offsets[i][1];
			break;
		}
	}
}