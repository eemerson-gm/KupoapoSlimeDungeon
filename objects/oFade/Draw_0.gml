/// @description Fade - Screen Fade.

//Fades to the new room.
var fade_room = !(room == new_room);
fade = approach(fade,fade_room,0.05);

//Draws the box to fade with.
draw_set_alpha(fade);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(c_white);
draw_set_alpha(1);

//Changes the current room.
if (room != new_room) && (fade == 1){
	room_goto(new_room);
}

//Deletes upon entering new room.
if (room == new_room) && (fade == 0){
	instance_destroy();
}