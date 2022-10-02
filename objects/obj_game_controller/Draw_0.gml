/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_font(fnt_game);

//Draw stats and in-progress item
draw_text(0, 552, "Day: " + string(currentDay) + "\nTime: " + string(currentHour) + ":" + stringCurrentMinute + "\n" + string(currentHeldQuantity) + "x " + currentlyHeldCookingProcess + " " + currentHeldSize + " " + currentHeldFood + "\nOrders Successful: " + string(currentSuccessfulOrders) + "/" + string(currentOrderNumber-1));


//Draw created items
for (item = 0; item < array_length(createdItemsDisplayed); item++)
{
	draw_text(850, 155+(item*40), "- " + createdItemsDisplayed[item]);
}

//Draw orders
draw_set_color(c_white)

for (order = 0; order < array_length(orders); order++)
{
	draw_text(order*320 , 0, "F" + string(order+1));
	
	for (item = 0; item < array_length(orders[order]); item++)
	{
		if (orders[order][item].foodType == "RawFood")
		{
			draw_text(order*320 , 30+item*30, string(orders[order][item].quantity) + "x " + orders[order][item].cookingProcess + " " + orders[order][item].myName);
		}
		else if (orders[order][item].foodType == "Drink")
		{
			draw_text(order*320 , 30+item*30, string(orders[order][item].quantity) + "x " + orders[order][item].size + " " + orders[order][item].myName);
		}
		else
		{
			draw_text(order*320 , 30+item*30, string(orders[order][item].quantity) + "x " + orders[order][item].myName);
		}
	}
}
