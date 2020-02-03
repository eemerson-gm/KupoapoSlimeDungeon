/// @description Game - Controls Spawn Wave.

//Resets the spawner alarm.
if (alarm_get(0) == -1) && (spawn_count > 0){ alarm_set(0,spawn_speed); }

//Gets spawn wave checkpoints.
var wave_5 = floor(spawn_wave/5);
var wave_10 = floor(spawn_wave/10);

//Defines the wave counts.
var wave_count;
wave_count[0] = 1;
wave_count[1] = 5;
wave_count[2] = 7;
wave_count[3] = 10;
wave_count[4] = 12;
wave_count[5] = 15;
wave_count[6] = 20;
wave_count[7] = 25;
wave_count[8] = 30;
wave_count[9] = 50;

//Changes spawning speed.
spawn_speed = max(2, (40 - (wave_10*2) - (fast_forward*20)));

//Resets spawner count and increments the wave.
if !instance_exists(oMonster) && (spawn_count == 0){
	
	//Increments spawn wave.
	spawn_wave++;
	
	//Gets spawn count.
	spawn_count = wave_count[spawn_wave%10];
	
	//Shows debug information about the wave.
	show_debug_message("------- WAVE #"+string(spawn_wave)+" -------\n Spawn Count: "+string(spawn_count)+"\n Spawn Speed: "+string(spawn_speed)+"\n ------- WAVE #"+string(spawn_wave)+" -------\n");
	
}