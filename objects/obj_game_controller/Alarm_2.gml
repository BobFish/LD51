/// @description Generate a new order

if (dayStarted)
{
	scr_generate_new_order();
	alarm_set(2, 60*10);
}