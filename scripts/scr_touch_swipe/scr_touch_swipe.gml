
///@param swipe direction
///@param swipe deadzone

//Defines swipe directions.
enum swipe{
	left,
	right,
	up,
	down
}

//Gets the direction to check for a swipe.
var swipe_dir = argument0;
var swipe_deadzone = argument1;

//Checks if swipe is outside the deadzone.
if (point_distance(mouse_x,mouse_y,touch_x,touch_y) > swipe_deadzone) && mouse_check_button(mb_left) && (touch_disable == false){
	
	//Switch statement for direction types.
	switch(swipe_dir){
		
		case swipe.left: //Checks for swipe left.
			if (mouse_x < touch_x - (swipe_deadzone/2)){
				//Disables touch swiping.
				touch_disable = true;
				return true;
			}else{
				return false;
			}
			break;
			
		case swipe.right: //Checks for swipe right.
			if (mouse_x > touch_x + (swipe_deadzone/2)){
				//Disables touch swiping.
				touch_disable = true;
				return true;
			}else{
				return false;
			}
			break;
			
		case swipe.up: //Checks for swipe up.
			if (mouse_y < touch_y - (swipe_deadzone/2)){
				//Disables touch swiping.
				touch_disable = true;
				return true;
			}else{
				return false;
			}
			break;
			
		case swipe.down: //Checks for swipe down.
			if (mouse_y > touch_y + (swipe_deadzone/2)){
				//Disables touch swiping.
				touch_disable = true;
				return true;
			}else{
				return false;
			}
			break;
			
	}
	
}