/// @description Menu - Drawing Options.

//Defines a sine wave to change title angles.
var sin_wave = sin(current_time/600)*5;

//Draws door interactable with selection.
var color_sense = 100;

//Door #1
var touch_region = point_in_rectangle(mouse_x,mouse_y,46,183-130,46+86,183) && mouse_check_button(mb_left);
var touch_color = make_color_rgb(255-(touch_region*color_sense),255-(touch_region*color_sense),255-(touch_region*color_sense));
var touch_select = (point_in_rectangle(mouse_x,mouse_y,46,183-130,46+86,183) && mouse_check_button_released(mb_left));
draw_sprite_ext(spr_menu_door_1,menu_door1,46,183,1,1,0,touch_color,1);
var sprite_number = (sprite_get_number(spr_menu_door_1)-1);
menu_door1 = approach(menu_door1,(menu_active == 1)*(sprite_get_number(spr_menu_door_1)-1),0.2);
if (menu_active == 0) && (touch_select){
	menu_active = 1;
}
if (menu_door1 == sprite_number) && !instance_exists(oFade){
	change_room_fade(room_battle);
}

//Door #2
var touch_region = point_in_rectangle(mouse_x,mouse_y,5,183-60,5+33,183) && mouse_check_button(mb_left);
var touch_color = make_color_rgb(255-(touch_region*color_sense),255-(touch_region*color_sense),255-(touch_region*color_sense));
var touch_select = (point_in_rectangle(mouse_x,mouse_y,5,183-60,5+33,183) && mouse_check_button_released(mb_left));
draw_sprite_ext(spr_menu_door_2,0,5,183,1,1,0,touch_color,1);
if (touch_select) && !instance_exists(oFade){
	change_room_fade(room_shop);
}

//Draws door titles.
draw_sprite_ext(spr_menu_title_1,0,92,44,1,1,sin_wave,c_white,1);
draw_sprite_ext(spr_menu_title_2,0,24,112,1,1,sin_wave,c_white,1);

//Draws highscores.
draw_set_style(font_6px,fa_left,fa_top);
draw_text(4,4,"Highscore: Wave "+string(gun_highscore));