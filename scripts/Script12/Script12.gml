function scr_start_day(){
	obj_game_controller.dayStarted = true;
	obj_game_controller.alarm[2] = 60;
	obj_game_controller.createdItems = [];
	obj_game_controller.createdItemsDisplayed = [];
	obj_game_controller.orders = [];
}