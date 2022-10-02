/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0E724F77
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5E9A0E62
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-20"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""[Only visible if a score has been uploaded]""
draw_text(x + 0, y + -20, string("[Only visible if a score has been uploaded]") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3D0B9441
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Highscores Centered on Player\n""
/// @DnDArgument : "var" "LLHighscoresCenteredFormatted()"
draw_text(x + 0, y + 0, string("Highscores Centered on Player\n") + string(LLHighscoresCenteredFormatted()));