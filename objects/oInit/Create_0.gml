/// @description Initialize - Global Variables.

//Randomizes the game.
randomize();

//scr_gun_init( id, name, bullet, amount, cooldown, spead, damage);
scr_gun_init(0,"Pistol",oBulletNormal,1,20,5,1,30);
scr_gun_init(1,"Shotgun",oBulletNormal,3,40,20,1,60);
scr_gun_init(2,"Rifle",oBulletNormal,1,10,5,1,300);
scr_gun_init(3,"Sniper",oBulletNormal,1,30,0,4,40);
scr_gun_init(4,"CanDoom",oBulletNormal,6,40,50,1,100);
scr_gun_init(5,"Megagun",oBulletMega,1,25,5,3,80);
scr_gun_init(6,"Meater",oBulletMeat,1,20,3,2,40);
scr_gun_init(7,"Finalizer",oBulletRainbow,3,10,30,5,1000);

globalvar gun_select, gun_list, gun_coins, gun_highscore, gun_time, gun_upgrades;
//Loads game stats.
ini_open(working_directory+"save.dat");
gun_select = ini_read_real("Stats","Select",0);
gun_coins = ini_read_real("Stats","Coins",0);
gun_highscore = ini_read_real("Stats","Highscore",1);
gun_time = ini_read_real("Stats","Time",date_get_minute(date_current_datetime()));
for(var gun = 0; gun < array_length_1d(gun_list); gun++){
	var pistol = (gun == 0);
	gun_upgrades[gun] = ini_read_real("Upgrades","Upgrades"+string(gun),pistol);
}

//Global game settings.
globalvar fast_forward; fast_forward = false;

room_goto(room_menu);