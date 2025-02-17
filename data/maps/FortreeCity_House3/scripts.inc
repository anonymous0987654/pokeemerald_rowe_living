FortreeCity_House3_MapScripts:: @ 8217AE7
	.byte 0

FortreeCity_House3_EventScript_Maniac:: @ 8217AE8
	lock
	faceplayer
	//goto_if_set FLAG_UNUSED_0x936, FortreeCity_House3_EventScript_GrassStarter_Come_Again
	msgbox FortreeCity_House3_Text_ThreeShards, MSGBOX_DEFAULT
	checkitem ITEM_GREEN_SHARD, 2
	//checkitem ITEM_POTION, 1
	compare VAR_RESULT, TRUE
	goto_if_eq FortreeCity_House3_EventScript_AsktoTrade
	release
	end
	
FortreeCity_House3_EventScript_AsktoTrade::
	playse SE_PIN
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement VAR_LAST_TALKED, Common_Movement_Delay48
	waitmovement 0
	msgbox FortreeCity_House3_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq FortreeCity_House3_EventScript_GrassStarter_Decline
	getpartysize
	compare VAR_RESULT, PARTY_SIZE
	goto_if_eq RustboroCity_DevonCorp_2F_EventScript_No_Space
	removeitem ITEM_GREEN_SHARD, 2
	setflag FLAG_UNUSED_0x936
	random 8
	switch VAR_RESULT
	case 0, FortreeCity_House3_EventScript_Give_Bulbasaur_Mega
	case 1, FortreeCity_House3_EventScript_Give_Chikorita
	case 2, FortreeCity_House3_EventScript_Give_Treecko_Mega
	case 3, FortreeCity_House3_EventScript_Give_Turtwig
	case 4, FortreeCity_House3_EventScript_Give_Snivy
	case 5, FortreeCity_House3_EventScript_Give_Chespin
	case 6, FortreeCity_House3_EventScript_Give_Rowlet
	case 7, FortreeCity_House3_EventScript_Give_Grookey
	end
	
FortreeCity_House3_EventScript_GrassStarter_Come_Again::
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
FortreeCity_House3_EventScript_GrassStarter_Decline::
	msgbox FortreeCity_House3_Text_Starter_Declined, MSGBOX_DEFAULT
	release
	end
	
//Starters
	
FortreeCity_House3_Text_ThreeShards:
	.string "If you have 2 Green Shards I can\n"
	.string "give you a good Pokémon.$"
	
FortreeCity_House3_Text_Question:
	.string "Are those Green Shards?\p"
	.string "Do you want to trade them\n"
	.string "for one of my Pokémon?$"
	
FortreeCity_House3_Text_Starter_Declined:
	.string "Oh well, come again if you change\n"
	.string "your mind.$"
	
FortreeCity_House3_Text_ComeAgain_Starter:
	.string "Come again if you want another\n"
	.string "one.$"
	
FortreeCity_House3_Text_ReceivedMonFromOldMan:
	.string "{PLAYER} received {STR_VAR_2} from\n"
	.string "the Maniac.$"
	
//Charmander
FortreeCity_House3_EventScript_Give_Bulbasaur::
	bufferspeciesname 1, SPECIES_BULBASAUR
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_BULBASAUR, 10, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
FortreeCity_House3_EventScript_Give_Bulbasaur_Mega::
	goto_if_unset FLAG_RECEIVED_TM04 FortreeCity_House3_EventScript_Give_Bulbasaur
	goto_if_set FLAG_UNUSED_0x279 FortreeCity_House3_EventScript_Give_Bulbasaur
	bufferspeciesname 1, SPECIES_BULBASAUR
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_BULBASAUR, 1, ITEM_VENUSAURITE
	setflag FLAG_UNUSED_0x279
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Cyndaquil
FortreeCity_House3_EventScript_Give_Chikorita::
	bufferspeciesname 1, SPECIES_CHIKORITA
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_CHIKORITA, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Torchic
FortreeCity_House3_EventScript_Give_Treecko::
	bufferspeciesname 1, SPECIES_TREECKO
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_TREECKO, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
FortreeCity_House3_EventScript_Give_Treecko_Mega::
	goto_if_unset FLAG_RECEIVED_TM04 FortreeCity_House3_EventScript_Give_Treecko
	goto_if_set FLAG_UNUSED_0x269 FortreeCity_House3_EventScript_Give_Treecko
	bufferspeciesname 1, SPECIES_TREECKO
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_TREECKO, 1, ITEM_SCEPTILITE
	setflag FLAG_UNUSED_0x269
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Chimchar
FortreeCity_House3_EventScript_Give_Turtwig::
	bufferspeciesname 1, SPECIES_TURTWIG
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_TURTWIG, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Tepig
FortreeCity_House3_EventScript_Give_Snivy::
	bufferspeciesname 1, SPECIES_SNIVY
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_SNIVY, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Fennekin
FortreeCity_House3_EventScript_Give_Chespin::
	bufferspeciesname 1, SPECIES_CHESPIN
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_CHESPIN, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Litten
FortreeCity_House3_EventScript_Give_Rowlet::
	bufferspeciesname 1, SPECIES_ROWLET
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_ROWLET, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Scorbunny
FortreeCity_House3_EventScript_Give_Grookey::
	bufferspeciesname 1, SPECIES_GROOKEY
	playfanfare MUS_OBTAIN_ITEM
	message FortreeCity_House3_Text_ReceivedMonFromOldMan
	givemon SPECIES_GROOKEY, 1, ITEM_NONE
	waitfanfare
	msgbox FortreeCity_House3_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end

FortreeCity_House3_EventScript_SchoolKidM:: @ 8217AF1
	msgbox FortreeCity_House3_Text_OhYouHavePokedex, MSGBOX_NPC
	end

FortreeCity_House3_Text_MetStevenHadAmazingPokemon: @ 8217AFA
	.string "While speaking about Pokédexes,\n"
	.string "I remembered something.\p"
	.string "I met this Trainer, Steven, when\n"
	.string "I was searching for rare stones.\p"
	.string "Hoo, boy, he had some amazing Pokémon\n"
	.string "with him.\p"
	.string "They weren't just rare, they were\n"
	.string "trained to terrifying extremes!\p"
	.string "He might even be stronger than the\n"
	.string "Gym Leader in this town…$"

FortreeCity_House3_Text_OhYouHavePokedex: @ 8217C22
	.string "What's that thing you have there?\p"
	.string "… … … … … …\p"
	.string "Oh, it's called a Pokédex?\n"
	.string "It's really awesome!$"

