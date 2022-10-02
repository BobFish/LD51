draw_self();

draw_set_color(c_black);
draw_text(x,y, " " + myLetter);


if (keyboard_check(ord(myLetter)))
{	
	if (isUnlocked && isSelected)
	{
		draw_rectangle(x, y, x+sprite_width, y+sprite_width,false);	
	}
}