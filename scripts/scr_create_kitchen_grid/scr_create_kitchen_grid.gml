// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_kitchen_grid(startXPos, startYPos){
	lettersRow1 = ["1","2","3","4","5","6","7","8","9"];
	lettersRow2 = ["Q","W","E","R","T","Y","U","I","O","P"];
	lettersRow3 = ["A","S","D","F","G","H","J","K","L"];
	lettersRow4 = ["Z","X","C","V","B","N","M"];
	rowWidths = [9, 10, 9 , 7];
	heightSize = 4;
	for (height = 0; height < heightSize; height++)
	{
		for (width = 0; width < rowWidths[height]; width++)
		{
			myTile = instance_create_depth(startXPos+width*80, startYPos+height*80, 0, obj_kitchenbuildtile);
			switch (height)
			{
				case 0:
					myTile.myLetter = lettersRow1[width];
					myTile.isUnlocked = true;
					break;
				case 1:
					myTile.myLetter = lettersRow2[width];
					break;
				case 2:
					myTile.myLetter = lettersRow3[width];
					break;
				case 3:
					myTile.myLetter = lettersRow4[width];
					break;
			}
		}
	}
}