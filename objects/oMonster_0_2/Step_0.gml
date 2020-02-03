/// @description Boss - Mouvement.

if (bbox_bottom < ROOM_FLOOR){
	boss_jump += 0.2;
	image_index = approach(image_index,image_number-1,0.4);
}else if (alarm_get(0) == -1){
	boss_jump = 0;
	alarm_set(0,10);
}
y += boss_jump;
y = clamp(y,-128,ROOM_FLOOR-(bbox_bottom-y));

if (bbox_bottom == ROOM_FLOOR){
	image_index = approach(image_index,0.1,0.2);
}

//Approaches the side of the room.
x = approach(x,boss_posx,2);

