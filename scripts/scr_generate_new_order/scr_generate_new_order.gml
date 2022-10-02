// Generate a new random order
function scr_generate_new_order(){
	//How many different things are we going to have
	totalItems = irandom_range(1, obj_game_controller.currentDay+2);
	
	
	//Generate the items
	myItems = [];
	
	show_debug_message("----------------")
	show_debug_message("Order: " + string(obj_game_controller.currentOrderNumber));
	show_debug_message("Total Items: " + string(totalItems));
	
	while(totalItems > 0)
	{
		//Figure out how many we making of this type
		numToGenerate = irandom_range(1, totalItems);
		
		// Get the letter we using
		valid = false;
		while(!valid)
		{
			letterUsing = obj_game_controller.unlockedLetters[irandom_range(0,array_length(obj_game_controller.unlockedLetters)-1)];
			
			//Ensure we actually got a food / drink item
			if (scr_get_key_deets(ord(letterUsing))[2] == "Food" || scr_get_key_deets(ord(letterUsing))[2] == "RawFood" || scr_get_key_deets(ord(letterUsing))[2] == "Drink")
			{
				valid = true;
			}
		}
		
		
		//Generate the item
		theSize = "";
		theCooking = "";
		switch (obj_game_controller.currentDay)
		{
			case 1:
				theSize = "Small Cup of";
				theCooking = "Fried";
				break;
			case 2:
				theSize = choose("Small Cup of", "Medium Cup of");
				theCooking = "Fried";
				break;
			case 3:
				theSize = choose("Small Cup of", "Medium Cup of");
				theCooking = choose("Fried");
				break;
			case 4:
				theSize = choose("Small Cup of", "Medium Cup of", "Large Cup of");
				theCooking = choose("Fried", "Grilled");
				break;
			case 5:
				theSize = choose("Small Cup of", "Medium Cup of", "Large Cup of");
				theCooking = choose("Fried", "Grilled");
				break;
		}
		
		item =
		{
			quantity : numToGenerate,
			foodType : scr_get_key_deets(ord(letterUsing))[2],
			myName : scr_get_key_deets(ord(letterUsing))[1],
			cookingProcess : theCooking,
			size : theSize
		}
		
		//Debug message
		if (item.foodType == "RawFood")
		{
			show_debug_message(string(item.quantity) + "x " + item.cookingProcess + " " + item.myName);
		}
		else if (item.foodType == "Drink")
		{
			show_debug_message(string(item.quantity) + "x " + item.size + " " + item.myName);
		}
		else
		{
			show_debug_message(string(item.quantity) + "x " + item.myName);
		}
		
		
		myItems[array_length(myItems)] = item;
		
		totalItems -= numToGenerate;
	}
	
	//Cleanup and iterate order number
	obj_game_controller.currentOrderNumber++;
	show_debug_message("----------------")
	
	obj_game_controller.orders[array_length(obj_game_controller.orders)] = myItems;
}