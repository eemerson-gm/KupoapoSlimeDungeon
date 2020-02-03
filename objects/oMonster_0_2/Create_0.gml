/// @description Boss - Variables.
event_inherited();

image_speed = 0;
boss_jump = 0;
boss_side1 = oCharacter.xstart;
boss_side2 = room_width - oCharacter.xstart;
if (oCharacter.x > room_width/2){
	boss_posx = boss_side1;
}else{
	boss_posx = boss_side2;
}