/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7213F0EF
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 41726FE3
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" ""LootLocker Simple Leaderboard Example\nPress R to reset player""
draw_text(room_width/2, 20, string("LootLocker Simple Leaderboard Example\nPress R to reset player") + "");