rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
jumpKeyPressed = keyboard_check_pressed(vk_space);



hdir = (rightKey - leftKey);
	xspd = hdir * moveSpd;
	yspd += grav;

if jumpKeyPressed && place_meeting(x, y+1, borderObj)
{
	yspd = jumpSpd;	
}

if place_meeting(x + xspd, y, borderObj)
{
	var _pixelCheck = sign(xspd);
	while !place_meeting(x + _pixelCheck, y, borderObj)
	{
		x += _pixelCheck;
	}
	
	xspd = 0;
}

if place_meeting(x + xspd, y + yspd, borderObj)
{
	var _pixelCheck = sign(yspd);
	while !place_meeting(x + xspd, y + _pixelCheck, borderObj)
	{
		y += _pixelCheck;
	}
	
	yspd = 0;
}

x += xspd;
y += yspd;

runKey = keyboard_check(vk_shift);