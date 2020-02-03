gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
gpu_set_blendmode(bm_normal);
	
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,image_alpha);
		
gpu_set_blendmode_ext(bm_inv_dest_colour, bm_zero);
draw_rectangle_colour(x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2, c_white,c_white,c_white,c_white,false);
gpu_set_blendmode(bm_normal);