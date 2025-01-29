/// @description Player Movement

#region user inputs

var move_right		=  keyboard_check(ord("D"));
var move_left		= -keyboard_check(ord("A"));

#endregion

var ground = instance_place(x, y+15, obj_wall);

if(ground){
	player_accel = ground.accel;	
}else{
	player_accel = 0.8;	
}

//process inputs
var dir = (move_right + move_left);
if(dir != 0){
	hsp_inertia += dir * player_accel;
	hsp_inertia = clamp(hsp, -move_speed, move_speed);
}else{
	if(abs(hsp_inertia) > 1)
	{
		hsp_inertia -= sign(hsp_inertia) * player_accel;
	}else{
		hsp_inertia = 0;	
	}
}

vsp_inertia += grav;



