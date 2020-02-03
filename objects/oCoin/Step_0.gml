/// @description Coin - Falling.
drop_speed += 0.1
y += drop_speed;
y = clamp(y,-16,ROOM_FLOOR);
if (y == ROOM_FLOOR){ drop_speed = 0; }

if place_meeting(x,y,oCharacter){
	gun_coins++;
	instance_destroy();
}

x_speed = approach(x_speed,0,0.05);
x += x_speed;
x = clamp(x,oCharacter.side_left,oCharacter.side_right);