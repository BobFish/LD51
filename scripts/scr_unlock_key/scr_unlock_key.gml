function scr_unlock_key(myKey){
	audio_play_sound(snd_unlock_key,0,false);
	show_debug_message("Unlocked key: "+myKey);
	
	//Add letter to list of unlocked ones so can keep track of which ones are unlocked
	obj_game_controller.unlockedLetters[array_length(obj_game_controller.unlockedLetters)] = string_upper(myKey);
	
	for (key = 0; key < instance_number(obj_kitchenbuildtile); key++)
	{
		if (string_upper(instance_find(obj_kitchenbuildtile, key).myLetter) == string_upper(myKey))
		{
			with(instance_find(obj_kitchenbuildtile, key))
			{
				isUnlocked = true;
			}
		}
	}
}