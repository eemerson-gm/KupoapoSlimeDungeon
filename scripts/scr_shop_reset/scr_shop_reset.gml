
//Resets the shop.
do{
	var temp_shop_gun1 = irandom_range(0,array_length_1d(gun_upgrades)-1);
	global.shop_gun1 = temp_shop_gun1;
}until(gun_upgrades[temp_shop_gun1] < 3);

do{
	var temp_shop_gun2 = irandom_range(0,array_length_1d(gun_upgrades)-1);
	global.shop_gun2 = temp_shop_gun2;
}until(gun_upgrades[temp_shop_gun2] < 3); 