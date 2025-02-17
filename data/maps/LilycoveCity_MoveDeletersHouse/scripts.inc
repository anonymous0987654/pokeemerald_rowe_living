.set LOCALID_MOVE_DELETER, 1

LilycoveCity_MoveDeletersHouse_MapScripts:: @ 821EA0A
	.byte 0

LilycoveCity_MoveDeletersHouse_EventScript_MoveDeleter:: @ 821EA0B
	lockall
	applymovement LOCALID_MOVE_DELETER, Common_Movement_FacePlayer
	waitmovement 0
	msgbox LilycoveCity_MoveDeletersHouse_Text_ICanMakeMonForgetMove, MSGBOX_YESNO
	switch VAR_RESULT
	case YES, LilycoveCity_MoveDeletersHouse_EventScript_ChooseMonAndMoveToForget
	case NO, LilycoveCity_MoveDeletersHouse_EventScript_ComeAgain
	releaseall
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_WaterStarter::
	lock
	faceplayer
	//goto_if_set FLAG_UNUSED_0x938, LilycoveCity_MoveDeletersHouse_EventScript_WaterStarter_Come_Again
	msgbox LilycoveCity_MoveDeletersHouse_Text_ThreeShards, MSGBOX_DEFAULT
	checkitem ITEM_BLUE_SHARD, 2
	//checkitem ITEM_POTION, 1
	compare VAR_RESULT, TRUE
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_AsktoTrade
	release
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_AsktoTrade::
	playse SE_PIN
	applymovement VAR_LAST_TALKED, Common_Movement_ExclamationMark
	waitmovement 0
	applymovement VAR_LAST_TALKED, Common_Movement_Delay48
	waitmovement 0
	msgbox LilycoveCity_MoveDeletersHouse_Text_Question, MSGBOX_YESNO
	compare VAR_RESULT, NO
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_WaterStarter_Decline
	getpartysize
	compare VAR_RESULT, PARTY_SIZE
	goto_if_eq RustboroCity_DevonCorp_2F_EventScript_No_Space
	removeitem ITEM_BLUE_SHARD, 2
	//removeitem ITEM_POTION, 1
	setflag FLAG_UNUSED_0x938
	random 8
	switch VAR_RESULT
	case 0, LilycoveCity_MoveDeletersHouse_EventScript_Give_Squirtle_Mega
	case 1, LilycoveCity_MoveDeletersHouse_EventScript_Give_Totodile
	case 2, LilycoveCity_MoveDeletersHouse_EventScript_Give_Mudkip_Mega
	case 3, LilycoveCity_MoveDeletersHouse_EventScript_Give_Piplup
	case 4, LilycoveCity_MoveDeletersHouse_EventScript_Give_Oshawott
	case 5, LilycoveCity_MoveDeletersHouse_EventScript_Give_Froakie
	case 6, LilycoveCity_MoveDeletersHouse_EventScript_Give_Popplio
	case 7, LilycoveCity_MoveDeletersHouse_EventScript_Give_Sobble
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_WaterStarter_Come_Again::
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_WaterStarter_Decline::
	msgbox LilycoveCity_MoveDeletersHouse_Text_Starter_Declined, MSGBOX_DEFAULT
	release
	end
	
//Starters

LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan: @ 82122CB
	.string "{PLAYER} received {STR_VAR_2} from\n"
	.string "the Old Man.$"
	
//Squirtle
LilycoveCity_MoveDeletersHouse_EventScript_Give_Squirtle::
	bufferspeciesname 1, SPECIES_SQUIRTLE
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_SQUIRTLE, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_Give_Squirtle_Mega::
	goto_if_unset FLAG_RECEIVED_TM04 LilycoveCity_MoveDeletersHouse_EventScript_Give_Squirtle
	goto_if_set FLAG_UNUSED_0x27C LilycoveCity_MoveDeletersHouse_EventScript_Give_Squirtle
	bufferspeciesname 1, SPECIES_SQUIRTLE
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_SQUIRTLE, 1, ITEM_BLASTOISINITE
	setflag FLAG_UNUSED_0x27C
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Totodile
LilycoveCity_MoveDeletersHouse_EventScript_Give_Totodile::
	bufferspeciesname 1, SPECIES_TOTODILE
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_TOTODILE, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Mudkip
LilycoveCity_MoveDeletersHouse_EventScript_Give_Mudkip::
	bufferspeciesname 1, SPECIES_MUDKIP
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_MUDKIP, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_Give_Mudkip_Mega::
	goto_if_unset FLAG_RECEIVED_TM04 LilycoveCity_MoveDeletersHouse_EventScript_Give_Mudkip
	goto_if_set FLAG_UNUSED_0x26A LilycoveCity_MoveDeletersHouse_EventScript_Give_Mudkip
	bufferspeciesname 1, SPECIES_MUDKIP
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_MUDKIP, 1, ITEM_SWAMPERTITE
	setflag FLAG_UNUSED_0x26A
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Piplup
LilycoveCity_MoveDeletersHouse_EventScript_Give_Piplup::
	bufferspeciesname 1, SPECIES_PIPLUP
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_PIPLUP, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Oshawott
LilycoveCity_MoveDeletersHouse_EventScript_Give_Oshawott::
	bufferspeciesname 1, SPECIES_OSHAWOTT
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_OSHAWOTT, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Froakie
LilycoveCity_MoveDeletersHouse_EventScript_Give_Froakie::
	bufferspeciesname 1, SPECIES_FROAKIE
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_FROAKIE, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
LilycoveCity_MoveDeletersHouse_EventScript_Give_Froakie_Ash::
	goto_if_unset FLAG_RECEIVED_TM04 LilycoveCity_MoveDeletersHouse_EventScript_Give_Froakie
	goto_if_set FLAG_UNUSED_0x2A1 LilycoveCity_MoveDeletersHouse_EventScript_Give_Froakie
	bufferspeciesname 1, SPECIES_GRENINJA
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_GRENINJA_BATTLE_BOND, 1, ITEM_NONE
	setflag FLAG_UNUSED_0x2A1
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Popplio
LilycoveCity_MoveDeletersHouse_EventScript_Give_Popplio::
	bufferspeciesname 1, SPECIES_POPPLIO
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_POPPLIO, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end
	
//Sobble
LilycoveCity_MoveDeletersHouse_EventScript_Give_Sobble::
	bufferspeciesname 1, SPECIES_SOBBLE
	playfanfare MUS_OBTAIN_ITEM
	message LilycoveCity_MoveDeletersHouse_Text_ReceivedMonFromOldMan
	givemon SPECIES_SOBBLE, 1, ITEM_NONE
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter, MSGBOX_DEFAULT
	release
	end


LilycoveCity_MoveDeletersHouse_EventScript_ChooseMonAndMoveToForget:: @ 821EA3B
	msgbox LilycoveCity_MoveDeletersHouse_Text_WhichMonShouldForget, MSGBOX_DEFAULT
	special ChoosePartyMon
	waitstate
	compare VAR_0x8004, 255
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_ComeAgain
	special IsSelectedMonEgg
	compare VAR_RESULT, TRUE
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_EggCantForgetMoves
	special GetNumMovesSelectedMonHas
	compare VAR_RESULT, 1
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_MonOnlyKnowsOneMove
	msgbox LilycoveCity_MoveDeletersHouse_Text_WhichMoveShouldBeForgotten, MSGBOX_DEFAULT
	fadescreen FADE_TO_BLACK
	special MoveDeleterChooseMoveToForget
	fadescreen FADE_FROM_BLACK
	compare VAR_0x8005, MAX_MON_MOVES
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_ChooseMonAndMoveToForget
	special BufferMoveDeleterNicknameAndMove
	msgbox LilycoveCity_MoveDeletersHouse_Text_MonsMoveShouldBeForgotten, MSGBOX_YESNO
	switch VAR_RESULT
	case YES, LilycoveCity_MoveDeletersHouse_EventScript_TryForgetMove
	case NO, LilycoveCity_MoveDeletersHouse_EventScript_ComeAgain
	releaseall
	end

LilycoveCity_MoveDeletersHouse_EventScript_TryForgetMove:: @ 821EAB0
	special IsLastMonThatKnowsSurf
	compare VAR_RESULT, TRUE
	goto_if_eq LilycoveCity_MoveDeletersHouse_EventScript_LastMonWithSurf
	special MoveDeleterForgetMove
	playfanfare MUS_MOVE_DELETED
	waitfanfare
	msgbox LilycoveCity_MoveDeletersHouse_Text_MonHasForgottenMove, MSGBOX_DEFAULT
	releaseall
	end

LilycoveCity_MoveDeletersHouse_EventScript_MonOnlyKnowsOneMove:: @ 821EACF
	special BufferMoveDeleterNicknameAndMove
	msgbox LilycoveCity_MoveDeletersHouse_Text_MonOnlyKnowsOneMove, MSGBOX_DEFAULT
	releaseall
	end

LilycoveCity_MoveDeletersHouse_EventScript_EggCantForgetMoves:: @ 821EADC
	msgbox LilycoveCity_MoveDeletersHouse_Text_EggCantForgetMoves, MSGBOX_DEFAULT
	releaseall
	end

LilycoveCity_MoveDeletersHouse_EventScript_ComeAgain:: @ 821EAE6
	msgbox LilycoveCity_MoveDeletersHouse_Text_ComeAgain, MSGBOX_DEFAULT
	releaseall
	end

LilycoveCity_MoveDeletersHouse_EventScript_LastMonWithSurf:: @ 821EAF0
	special BufferMoveDeleterNicknameAndMove
	msgbox LilycoveCity_MoveDeletersHouse_Text_CantForgetSurf, MSGBOX_DEFAULT
	releaseall
	end

LilycoveCity_MoveDeletersHouse_Text_ICanMakeMonForgetMove: @ 821EAFD
	.string "Uh…\n"
	.string "Oh, yes, I'm the Move Deleter.\p"
	.string "I can make Pokémon forget their moves.\p"
	.string "Would you like me to do that?$"
	
LilycoveCity_MoveDeletersHouse_Text_ThreeShards:
	.string "If you have 2 Blue Shards I can\n"
	.string "give you a good Pokémon.$"
	
LilycoveCity_MoveDeletersHouse_Text_Question:
	.string "Are those Blue Shards?\p"
	.string "Do you want to trade them\n"
	.string "for one of my Pokémon?$"
	
LilycoveCity_MoveDeletersHouse_Text_Chose_Well:
	.string "Please chose one of my Pokémon.$"
	
LilycoveCity_MoveDeletersHouse_Text_Starter_Declined:
	.string "Oh well, come again if you change\n"
	.string "your mind.$"
	
LilycoveCity_MoveDeletersHouse_Text_ComeAgain_Starter:
	.string "Come again if you want another\n"
	.string "one.$"

LilycoveCity_MoveDeletersHouse_Text_WhichMonShouldForget: @ 821EB65
	.string "Which Pokémon should forget a move?$"

LilycoveCity_MoveDeletersHouse_Text_WhichMoveShouldBeForgotten: @ 821EB89
	.string "Which move should be forgotten?$"

LilycoveCity_MoveDeletersHouse_Text_MonOnlyKnowsOneMove: @ 821EBA9
	.string "{STR_VAR_1} knows only one move\n"
	.string "so it can't be forgotten…$"

LilycoveCity_MoveDeletersHouse_Text_MonsMoveShouldBeForgotten: @ 821EBDA
	.string "Hm! {STR_VAR_1}'s {STR_VAR_2}?\n"
	.string "That move should be forgotten?$"

LilycoveCity_MoveDeletersHouse_Text_MonHasForgottenMove: @ 821EC06
	.string "It worked to perfection!\p"
	.string "{STR_VAR_1} has forgotten\n"
	.string "{STR_VAR_2} completely.$"

LilycoveCity_MoveDeletersHouse_Text_ComeAgain: @ 821EC3F
	.string "Come again if there are moves that\n"
	.string "need to be forgotten.$"

LilycoveCity_MoveDeletersHouse_Text_EggCantForgetMoves: @ 821EC78
	.string "What?\n"
	.string "No Egg should know any moves.$"

LilycoveCity_MoveDeletersHouse_Text_CantForgetSurf: @ 821EC9C
	.string "Hm!\p"
	.string "Your {STR_VAR_1} doesn't seem willing\n"
	.string "to forget Surf.$"

