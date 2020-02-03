/// @description Character - Touch Controls.

//Defines the wait time between updates.
var swipe_time = 3;

//Updates control variables when screen is pressed.
if mouse_check_button_pressed(mb_left){ scr_touch_update(); }
if mouse_check_button(mb_left) && (alarm_get(0) == -1){ alarm_set(0,swipe_time); }

//Defines touch control checking.
var swipe_deadzone = 25;
var swipe_up = scr_touch_swipe(swipe.up,swipe_deadzone) && (char_hp > -1);
var swipe_left = scr_touch_swipe(swipe.left,swipe_deadzone) && (char_hp > -1);
var swipe_right = scr_touch_swipe(swipe.right,swipe_deadzone) && (char_hp > -1);

//Changes side of the room.
if (swipe_right) && (floor(x) <= ceil(side_left)){ char_posx = side_right; show_debug_message("Move - Right"); sprite_index = spr_char_dive; }
if (swipe_left) && (ceil(x) >= floor(side_right)){ char_posx = side_left; show_debug_message("Move - Left"); sprite_index = spr_char_dive; }

//Changes character position.
x = approach(x,char_posx,abs(x - char_posx)/8);

//Check if character has reached a side.
if (char_hp > 0){
	if (floor(x) <= ceil(side_left)){ sprite_index = spr_char_stand; image_xscale = 1; }
	if (ceil(x) >= floor(side_right)){ sprite_index = spr_char_stand; image_xscale = -1; }
}

//Controls character jumping.
if (swipe_up) && (y == ystart){ char_jump = -5; }
y += char_jump;
y = clamp(y,0,ystart);
if (y == ystart){ char_jump = 0; }else{ char_jump += 0.2; }

//Change visibility when stunned.
if (char_stun > 0){
	char_stun = approach(char_stun,0,1);
	if (char_stun%3 == 0){
		visible = !visible;
	}
}else{
	visible = true;
}

//Displays the death screen.
if (char_hp <= 0) && !instance_exists(oDeath){
	instance_create_depth(0,0,0,oDeath);
	sprite_index = spr_char_death;
}