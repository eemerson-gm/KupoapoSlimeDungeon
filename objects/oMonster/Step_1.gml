/// @description Monster - Mouvement
if (oCharacter.char_hp > -1) && (oGame.spawn_wave%10 != 0){
	y += monster_speed + (monster_speed*fast_forward);
}