function scr_get_key_deets(keyint){
	//Letter, Name, type (Food, RawFood, Drink, Size, cookingProcess, other)
	switch(keyint)
	{
		case 65:
			return ["A", "Apple Juice", "Drink"];
			break;
		case 66:
			return ["B", "Barramundi", "RawFood"];
			break;
		case 67:
			return ["C", "Chips", "RawFood"];
			break;
		case 68:
			return ["D", "Dim Sim", "RawFood"];
			break;
		case 69:
			return ["E", "Eel", "RawFood"];
			break;
		case 70:
			return ["F", "Fried", "cookingProcess"];
			break;
		case 71:
			return ["G", "Grilled", "cookingProcess"];
			break;
		case 72:
			return ["H", "Herring", "RawFood"];
			break;
		case 73:
			return ["I", "Ice Cream", "Food"];
			break;
		case 74:
			return ["J", "Jelly", "Food"];
			break;
		case 75:
			return ["K", "Kale Salad", "Food"];
			break;
		case 76:
			return ["L", "Large Cup of", "Size"];
			break;
		case 77:
			return ["M", "Medium Cup of", "Size"];
			break;
		case 78:
			return ["N", "Nuggets", "RawFood"];
			break;
		case 79:
			return ["O", "Orange Juice", "Drink"];
			break;
		case 80:
			return ["P", "Phone", "other"];
			break;
		case 81:
			return ["Q", "Quail", "RawFood"];
			break;
		case 82:
			return ["R", "Raspberry", "Drink"];
			break;
		case 83:
			return ["S", "Small Cup of", "Size"];
			break;
		case 84:
			return ["T", "Tomato sauce", "Food"];
			break;
		case 85:
			return ["U", "Urchin", "Food"];
			break;
		case 86:
			return ["V", "Vinegar", "Food"];
			break;
		case 87:
			return ["W", "Water", "Drink"];
			break;
		case 88:
			return ["X", "Xylophone", "Food"];
			break;
		case 89:
			return ["Y", "Yellowfin Tuna", "RawFood"];
			break;
		case 90:
			return ["Z", "Zucchini Chips", "RawFood"];
			break;
		default:
			return ["", "", ""];
	}
}