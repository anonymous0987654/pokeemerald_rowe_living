SeafloorCavern_Room8_MapScripts:: @ 8234DC7
	map_script MAP_SCRIPT_ON_LOAD, SeafloorCavern_Room8_OnLoad
	.byte 0
	
SeafloorCavern_Room8_OnLoad::
	call_if_set FLAG_SYS_GAME_CLEAR, SeafloorCavern_Room8_EventScript_OpenKyogreCave
	end
	
SeafloorCavern_Room8_EventScript_OpenKyogreCave::
	setmetatile 5, 1, METATILE_Cave_CaveEntrance_Top, 1
	setmetatile 5, 2, METATILE_Cave_CaveEntrance_Bottom, 0
	return


