//Handle progressing time
if (dayStarted)
{
	if (currentSecond < 9)
	{
		currentSecond++;	
	}
	else if (currentMinute < 59)
	{
		currentMinute++;
		currentSecond = 0;
	}
	else if (currentHour < maxHour)
	{
		currentHour++;
		currentMinute = 0;
	}
	else
	{
		dayStarted = false;
		
		//If not friday
		if (currentDay < 5)
		{
			//Reset for new day
			currentDay += 1;
			currentHour = 10;
			currentMinute = 0;
			currentSecond = 0;
			
			switch(currentDay)
			{
				case 2:
				createdItems = [];
				createdItemsDisplayed = [];
				orders = [];
					create_textevent(
					[                                                                                              //myText
						"Day 2 - Tuesday",
						"You've unlocked Barramundi",
						"You've unlocked Dim Sim",
						"You've unlocked Medium Cup",
						"You've unlocked Apple Juice",
						"You've unlocked Nuggets"
					],
					-1,                                                       //mySpeakers
					-1,   //myEffects
					-1,                                                                                            //myTextSpeed
					-1,                                                                   //myTypes
					-1,                                                            //myNextLine
					[[scr_unlock_key, "B"],[scr_unlock_key, "D"],[scr_unlock_key, "M"],[scr_unlock_key, "A"],[scr_unlock_key, "N"],[scr_start_day]],                                                                                            //myScripts
					-1,                                                                                            //myTextCol
					-1,                                                                   //myEmotion
					-1                                                                                             //myEmote
					);
					break;
				case 3:
					createdItems = [];
					createdItemsDisplayed = [];
					orders = [];
					create_textevent(
					[                                                                                              //myText
						"Day 3 - Wednesday",
						"You've unlocked Herring",
						"You've unlocked Ice Cream",
						"You've unlocked Jelly",
						"You've unlocked Kale Salad",
						"You've unlocked Raspberry Soft Drink"
					],
					-1,                                                       //mySpeakers
					-1,   //myEffects
					-1,                                                                                            //myTextSpeed
					-1,                                                                   //myTypes
					-1,                                                            //myNextLine
					[[scr_unlock_key, "H"],[scr_unlock_key, "I"],[scr_unlock_key, "J"],[scr_unlock_key, "K"],[scr_unlock_key, "R"],[scr_start_day]],                                                                                            //myScripts
					-1,                                                                                            //myTextCol
					-1,                                                                   //myEmotion
					-1                                                                                             //myEmote
					);
					break;
				case 4:
					createdItems = [];
					createdItemsDisplayed = [];
					orders = [];
					create_textevent(
					[                                                                                              //myText
						"Day 4 - Thursday",
						"You've unlocked Large Cup",
						"You've unlocked Eel",
						"You've unlocked Grilling",
						"You've unlocked Orange Soft Drink",
						"You've unlocked Phone (I ran out of time to add this so it won't do anything :("
					],
					-1,                                                       //mySpeakers
					-1,   //myEffects
					-1,                                                                                            //myTextSpeed
					-1,                                                                   //myTypes
					-1,                                                            //myNextLine
					[[scr_unlock_key, "L"],[scr_unlock_key, "E"],[scr_unlock_key, "G"],[scr_unlock_key, "O"],[scr_unlock_key, "P"],[scr_start_day]],                                                                                            //myScripts
					-1,                                                                                            //myTextCol
					-1,                                                                   //myEmotion
					-1                                                                                             //myEmote
					);
					break;
				case 5:
					createdItems = [];
					createdItemsDisplayed = [];
					orders = [];
					create_textevent(
					[                                                                                              //myText
						"Day 5 - Friday",
						"You've unlocked Xylophone",
						"You've unlocked Quail",
						"You've unlocked Yellowfin Tuna",
						"You've unlocked Zucchini Chips",
						"You've unlocked Urchin",
						"You've unlocked Vinegar"
					],
					-1,                                                       //mySpeakers
					-1,   //myEffects
					-1,                                                                                            //myTextSpeed
					-1,                                                                   //myTypes
					-1,                                                            //myNextLine
					[[scr_unlock_key, "X"],[scr_unlock_key, "Q"],[scr_unlock_key, "Y"],[scr_unlock_key, "Z"],[scr_unlock_key, "U"],[scr_unlock_key, "V"],[scr_start_day]],                                                                                            //myScripts
					-1,                                                                                            //myTextCol
					-1,                                                                   //myEmotion
					-1                                                                                             //myEmote
					);
					break;
			}
		}
		else
		{
			LootLockerSubmitScore("REMOVEDFORGITHUB", string(currentSuccessfulOrders));
			create_textevent(
				[                                                                                              //myText
					"You've reached the end of the game.",
					"You got " + string(currentSuccessfulOrders) + " orders completed correctly.",
					"I'll submit this now to the leaderboard.",
					"You are currently #"+string(LLPlayerRank())+" try to imrpove it if you aren't #1!"
					
				],
				-1,                                                       //mySpeakers
				-1,   //myEffects
				-1,                                                                                            //myTextSpeed
				-1,                                                                   //myTypes
				-1,                                                            //myNextLine
				-1,                                                                                      //myScripts
				-1,                                                                                            //myTextCol
				-1,                                                                   //myEmotion
				-1                                                                                             //myEmote
				);
		}

	}
	
	if (currentMinute < 10)
	{
		stringCurrentMinute = "0"+string(currentMinute);
	}
	else
	{
		stringCurrentMinute = string(currentMinute);
	}
	
}

//Handle removing last item if press backspace
if (keyboard_check_pressed(vk_backspace))
{
	if (array_length(createdItems) > 0)
	{
		array_delete(createdItems, array_length(createdItems)-1, 1);
		
		createdItemsDisplayed = [];
		for (item = 0; item < array_length(createdItems); item++)
		{
			createdItemsDisplayed[item] = createdItems[item];	
		}
	}
}

//Handle making item
if (keyboard_check_pressed(vk_enter))
{
	if (itemBeingMade == false)
	{
		if (array_length(createdItems)+currentHeldQuantity < 10)
		{
			
			if (currentOrderTypeFoodOrDrink == "Drink" && currentHeldSize != "")
			{
				itemBeingMade = true;
				
				audio_play_sound(snd_drink, 0, false);
				alarm_set(0, 60*audio_sound_length(snd_drink));
			}
			else if (currentOrderTypeFoodOrDrink == "RawFood" && currentlyHeldCookingProcess != "")
			{
				itemBeingMade = true;
				
				audio_play_sound(frygrill, 0, false);
				alarm_set(0, 60*audio_sound_length(frygrill));
			}
			else if (currentOrderTypeFoodOrDrink == "Food")
			{
				itemBeingMade = true;
				
				audio_play_sound(foodPrep, 0, false);
				alarm_set(0, 60*audio_sound_length(foodPrep));
			}
			
			if (itemBeingMade)
			{
				for (item = 0; item < currentHeldQuantity; item++)
				{
					orderItemTextForm = "";
					switch(currentOrderTypeFoodOrDrink)
					{
						case "Food":
							orderItemTextForm = currentHeldFood;
						break;
						case "RawFood":
							orderItemTextForm = currentlyHeldCookingProcess + currentHeldFood;
						break;
						case "Drink":
							orderItemTextForm = currentHeldSize + currentHeldFood;
						break;
					}
					createdItems[array_length(createdItems)] = orderItemTextForm;
				}
			}
		}
	}
}

//Check F key being held down
if (keyboard_check_pressed(vk_f1) || keyboard_check_pressed(vk_f2) || keyboard_check_pressed(vk_f3) || keyboard_check_pressed(vk_f4) || keyboard_check_pressed(vk_f5) || keyboard_check_pressed(vk_f6) || keyboard_check_pressed(vk_f7) || keyboard_check_pressed(vk_f8) || keyboard_check_pressed(vk_f9) || keyboard_check_pressed(vk_f10) || keyboard_check_pressed(vk_f11) || keyboard_check_pressed(vk_f12))
{
	//f1 = 112
	FKeyHeldDown = keyboard_key;
	
	//Submit the order and calculate a score
	if (FKeyHeldDown != 0 && array_length(orders) > FKeyHeldDown-112)
	{
		//Just keep track of those values so they don't get lost
		myFKey = FKeyHeldDown;
			
		//Put all items of the order in a ds_map so we can compare
		orderItemMap = ds_map_create();
		for (orderItem = 0; orderItem < array_length(orders[myFKey-112]) orderItem++)
		{
			orderItemTextForm = "";
			switch(orders[myFKey-112][orderItem].foodType)
			{
				case "Food":
					orderItemTextForm = orders[myFKey-112][orderItem].myName;
				break;
				case "RawFood":
					orderItemTextForm = orders[myFKey-112][orderItem].cookingProcess + orders[myFKey-112][orderItem].myName;
				break;
				case "Drink":
					orderItemTextForm = orders[myFKey-112][orderItem].size + orders[myFKey-112][orderItem].myName;
				break;
			}
				
			if (!is_undefined(ds_map_find_value(orderItemMap, orderItemTextForm)))
			{
				ds_map_replace(orderItemMap, orderItemTextForm, ds_map_find_value(orderItemMap, orderItemTextForm) + orders[myFKey-112][orderItem].quantity)
			}
			else
			{
				ds_map_replace(orderItemMap, orderItemTextForm, orders[myFKey-112][orderItem].quantity);
			}
		}
			

		show_debug_message("Order: " + json_encode(orderItemMap));

			
		//Put all made items in a ds_map so we can compare
		cartItemMap = ds_map_create();
		for (orderItem = 0; orderItem < array_length(createdItemsDisplayed); orderItem++)
		{
			if (!is_undefined(ds_map_find_value(cartItemMap, createdItemsDisplayed[orderItem])))
			{
				ds_map_replace(cartItemMap, createdItemsDisplayed[orderItem], ds_map_find_value(cartItemMap, createdItemsDisplayed[orderItem]) + 1)
			}
			else
			{
				ds_map_replace(cartItemMap, createdItemsDisplayed[orderItem], 1);
			}
		}
			
		show_debug_message("Cart: " + json_encode(cartItemMap));
			
		if (json_encode(orderItemMap) == json_encode(cartItemMap))
		{
			show_debug_message("equal json");
			currentSuccessfulOrders++;
			audio_play_sound(snd_success, 0, false);
		}
		else
		{
			audio_play_sound(snd_fail, 0, false);
		}
			
		//Clear list as its all gone to the order
		createdItems = [];
		createdItemsDisplayed = [];
			
		//Clear the order
		array_delete(orders, myFKey-112, 1);
			
		//Clean up the ds maps
		ds_map_destroy(orderItemMap);
		ds_map_destroy(cartItemMap);
	}
}
if (keyboard_check_released(vk_f1) || keyboard_check_released(vk_f2) || keyboard_check_released(vk_f3) || keyboard_check_released(vk_f4) || keyboard_check_released(vk_f5) || keyboard_check_released(vk_f6) || keyboard_check_released(vk_f7) || keyboard_check_released(vk_f8) || keyboard_check_released(vk_f9) || keyboard_check_released(vk_f10) || keyboard_check_released(vk_f11) || keyboard_check_released(vk_f12))
{
	FKeyHeldDown = 0;
}