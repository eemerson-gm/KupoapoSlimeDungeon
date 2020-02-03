
//Opens a file to write to.
ini_open(working_directory+"save.dat");
ini_write_real("Stats","Coins",gun_coins);
ini_write_real("Stats","Highscore",gun_highscore);
ini_write_real("Stats","Select",gun_select);
ini_write_real("Stats","Time",gun_time);
for(var gun = 0; gun < array_length_1d(gun_upgrades); gun++){
	ini_write_real("Upgrades","Upgrades"+string(gun),gun_upgrades[gun]);
}
ini_close();