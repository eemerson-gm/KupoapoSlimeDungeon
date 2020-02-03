/// @description Death - Options.

//Draws the traslucent background.
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_color(c_white);
draw_set_alpha(1);

//Draws the menu options.
draw_set_style(font_6px,fa_center,fa_center);
var touch_pressed = point_in_rectangle(mouse_x,mouse_y,(room_width/2)-24,(room_height/2)-14,(room_width/2)+24,(room_height/2)-6) && mouse_check_button(mb_left);
var touch_color = make_color_rgb(255,255,255-(touch_pressed*255));
var touch_released = point_in_rectangle(mouse_x,mouse_y,(room_width/2)-24,(room_height/2)-14,(room_width/2)+24,(room_height/2)-6) && mouse_check_button_released(mb_left);
draw_text_color((room_width/2),(room_height/2)-10+(touch_pressed),"Restart",touch_color,touch_color,touch_color,touch_color,1);
if (touch_released) && !instance_exists(oFade){ room_restart(); }

var touch_pressed = point_in_rectangle(mouse_x,mouse_y,(room_width/2)-24,(room_height/2)+6,(room_width/2)+24,(room_height/2)+14) && mouse_check_button(mb_left);
var touch_color = make_color_rgb(255,255,255-(touch_pressed*255));
var touch_released = point_in_rectangle(mouse_x,mouse_y,(room_width/2)-24,(room_height/2)+6,(room_width/2)+24,(room_height/2)+14) && mouse_check_button_released(mb_left);
draw_text_color((room_width/2),(room_height/2)+10+(touch_pressed),"Back to Menu",touch_color,touch_color,touch_color,touch_color,1);
if (touch_released) && !instance_exists(oFade){ change_room_fade(room_menu); }
