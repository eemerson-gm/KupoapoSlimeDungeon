/// @description Monster - Chooses a side.
event_inherited();

var quarter_room = room_width/4;
x = choose(x-quarter_room,x+quarter_room);

alarm_set(0,90);