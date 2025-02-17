MagmaHideout_3F_1R_MapScripts:: @ 823A1B2
	map_script MAP_SCRIPT_ON_LOAD, MagmaHideout_3F_1R_OnLoad
	.byte 0
	
MagmaHideout_3F_1R_OnLoad::
	call_if_set FLAG_SYS_GAME_CLEAR, MagmaHideout_3F_1R_EventScript_OpenGroudonCave
	end
	
MagmaHideout_3F_1R_EventScript_OpenGroudonCave:: @ 81EC3AE
	setmetatile 13, 13, METATILE_Lavaridge_CaveEntrance_Top, 1
	setmetatile 13, 14, METATILE_Lavaridge_CaveEntrance_Bottom, 0
	return

MagmaHideout_3F_1R_EventScript_Grunt9:: @ 823A1B3
	msgbox MagmaHideout_3F_1R_Text_Grunt9Intro, MSGBOX_DEFAULT
	end

MagmaHideout_3F_1R_EventScript_Grunt16:: @ 823A1CA
	trainerbattle_single TRAINER_GRUNT_MAGMA_HIDEOUT_16, MagmaHideout_3F_1R_Text_Grunt16Intro, MagmaHideout_3F_1R_Text_Grunt16Defeat
	msgbox MagmaHideout_3F_1R_Text_Grunt16PostBattle, MSGBOX_AUTOCLOSE
	end

MagmaHideout_3F_1R_Text_Grunt9Intro: @ 823A1E1
	.string "What did I do to deserve this guard\n"
	.string "posting?\p"
	.string "My left ear is burning up!$"

MagmaHideout_3F_1R_Text_Grunt9Defeat: @ 823A229
	.string "I'm getting heat exhaustion…$"

MagmaHideout_3F_1R_Text_Grunt9PostBattle: @ 823A246
	.string "Do you think it's odd that we're wearing\n"
	.string "hoods in this magma-filled volcano?$"

MagmaHideout_3F_1R_Text_Grunt16Intro: @ 823A293
	.string "We joined so we can help our leader\n"
	.string "achieve his fantastic vision.\p"
	.string "I don't care if you're with Team Aqua\n"
	.string "or if you're just some kid passing by.\p"
	.string "No one interferes with us and gets\n"
	.string "away with it!$"

MagmaHideout_3F_1R_Text_Grunt16Defeat: @ 823A353
	.string "Oh, no!\n"
	.string "You're not to be trusted at all!$"

MagmaHideout_3F_1R_Text_Grunt16PostBattle: @ 823A37C
	.string "Listen to me.\n"
	.string "Team Magma is right!\p"
	.string "Don't listen to Team Aqua.\n"
	.string "Don't believe their lies!$"

