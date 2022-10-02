if (keyboard_check_pressed(ord(myLetter)))
{	
	switch(sprite_index)
	{
		case spr_shop_icon_phone:
			if (audio_is_playing(snd_phone))
			{
				audio_stop_sound(snd_phone);
				create_textevent("Hello! I'm order 41, please change that large fanta to a small coke", -1, -1, -1, -1, -1, -1, -1, -1, -1);
			}
			break;
	}
}

if (isUnlocked && !hasBeenUnlocked)
{
	hasBeenUnlocked = true;
	if (myLetter == 1 || myLetter == 2 || myLetter == 3 || myLetter == 4 || myLetter == 5 || myLetter == 6 || myLetter == 7 || myLetter == 8 || myLetter == 9)
	{
		
	}
	else
	{
		if (sprite_exists(asset_get_index("spr_"+string_lower(myLetter))))
		{
			sprite_index = asset_get_index("spr_"+string_lower(myLetter));
		}
		else
		{
			sprite_index = spr_shop_icon_phone;
		}
	}
}


if (obj_game_controller.cookingMode)
{
		//if key held down
	if (keyboard_check_pressed(ord(myLetter)))
	{	
		if (myLetter == 1 || myLetter == 2 || myLetter == 3 || myLetter == 4 || myLetter == 5 || myLetter == 6 || myLetter == 7 || myLetter == 8 || myLetter == 9)
		{
			if (obj_game_controller.currentHeldQuantity == 0)
				{
					obj_game_controller.currentHeldQuantity = real(myLetter);
					isSelected = true;
				}
		}
		if (isUnlocked)
		{
			if (scr_get_key_deets(ord(myLetter))[2] == "Food" || scr_get_key_deets(ord(myLetter))[2] == "RawFood" || scr_get_key_deets(ord(myLetter))[2] == "Drink")
			{
				//Only allow groups of the same items
				if (scr_get_key_deets(ord(myLetter))[2] == obj_game_controller.currentOrderTypeFoodOrDrink || obj_game_controller.currentOrderTypeFoodOrDrink == "")
				{
					//Only allow food items if drink size is already selected
					if (scr_get_key_deets(ord(myLetter))[2] == "Food" || scr_get_key_deets(ord(myLetter))[2] == "RawFood")
					{
						if (obj_game_controller.currentHeldSize == "")
						{
							obj_game_controller.currentHeldFood = scr_get_key_deets(ord(myLetter))[1];
							obj_game_controller.currentOrderTypeFoodOrDrink = scr_get_key_deets(ord(myLetter))[2];
							isSelected = true;
						}

					}
					else
					{
						//Don't allow you to make drinks if we already have a cooking type
						if (obj_game_controller.currentlyHeldCookingProcess == "")
						{
							obj_game_controller.currentHeldFood = scr_get_key_deets(ord(myLetter))[1];
							obj_game_controller.currentOrderTypeFoodOrDrink = scr_get_key_deets(ord(myLetter))[2];
							isSelected = true;
						}
					}
				}
			}
			else if (scr_get_key_deets(ord(myLetter))[2] == "Size")
			{
				if (obj_game_controller.currentHeldSize == "")
				{
					if (obj_game_controller.currentOrderTypeFoodOrDrink == "Drink" || obj_game_controller.currentOrderTypeFoodOrDrink == "")
					{
						//Make it so you can only add  size for drinks
						obj_game_controller.currentHeldSize = scr_get_key_deets(ord(myLetter))[1];
						isSelected = true;
					}

				}
			}
			else if (scr_get_key_deets(ord(myLetter))[2] == "cookingProcess")
			{
				if (obj_game_controller.currentlyHeldCookingProcess == "")
				{
					//Don't allow you to add make fried water
					if (obj_game_controller.currentOrderTypeFoodOrDrink == "RawFood" || obj_game_controller.currentOrderTypeFoodOrDrink == "")
					{
						obj_game_controller.currentlyHeldCookingProcess = scr_get_key_deets(ord(myLetter))[1];
						isSelected = true;
					}
				}
			}
		}
	}
	if (keyboard_check_released(ord(myLetter)))
	{	
		isSelected = false;
	
		if (myLetter == 1 || myLetter == 2 || myLetter == 3 || myLetter == 4 || myLetter == 5 || myLetter == 6 || myLetter == 7 || myLetter == 8 || myLetter == 9)
		{
			obj_game_controller.currentHeldQuantity = 0;
		}
		if (isUnlocked)
		{
			if (obj_game_controller.currentHeldFood == scr_get_key_deets(ord(myLetter))[1])
			{
				obj_game_controller.currentHeldFood = "";
				obj_game_controller.currentOrderTypeFoodOrDrink = "";
			}
		
			else if (obj_game_controller.currentHeldSize == scr_get_key_deets(ord(myLetter))[1])
			{
				obj_game_controller.currentHeldSize = "";
			}
		
			else if (obj_game_controller.currentlyHeldCookingProcess == scr_get_key_deets(ord(myLetter))[1])
			{
				obj_game_controller.currentlyHeldCookingProcess = "";
			}
		}
	}
}
