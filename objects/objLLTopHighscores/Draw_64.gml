/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 043127B8
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1062110A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Highscores Top\n""
/// @DnDArgument : "var" "LLHighscoresTopFormatted()"
draw_text(x + 0, y + 0, string("Highscores Top\n") + string(LLHighscoresTopFormatted()));