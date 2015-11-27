const_value set 2
	const ILEXFOREST_BIRD
	const ILEXFOREST_YOUNGSTER1
	const ILEXFOREST_BLACK_BELT
	const ILEXFOREST_ROCKER
	const ILEXFOREST_POKE_BALL1
	const ILEXFOREST_KURT
	const ILEXFOREST_LASS
	const ILEXFOREST_YOUNGSTER2
	const ILEXFOREST_POKE_BALL2
	const ILEXFOREST_POKE_BALL3
	const ILEXFOREST_POKE_BALL4

IlexForest_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 1

	; callbacks

	dbw 2, UnknownScript_0x6eb03

UnknownScript_0x6eb03:
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x6eb34
	copybytetovar FarfetchdPosition
	if_equal $1, UnknownScript_0x6eb35
	if_equal $2, UnknownScript_0x6eb3c
	if_equal $3, UnknownScript_0x6eb43
	if_equal $4, UnknownScript_0x6eb4a
	if_equal $5, UnknownScript_0x6eb51
	if_equal $6, UnknownScript_0x6eb58
	if_equal $7, UnknownScript_0x6eb5f
	if_equal $8, UnknownScript_0x6eb66
	if_equal $9, UnknownScript_0x6eb6d
	if_equal $a, UnknownScript_0x6eb74
UnknownScript_0x6eb34:
	return

UnknownScript_0x6eb35:
	moveperson ILEXFOREST_BIRD, $e, $1f
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb3c:
	moveperson ILEXFOREST_BIRD, $f, $19
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb43:
	moveperson ILEXFOREST_BIRD, $14, $18
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb4a:
	moveperson ILEXFOREST_BIRD, $1d, $16
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb51:
	moveperson ILEXFOREST_BIRD, $1c, $1f
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb58:
	moveperson ILEXFOREST_BIRD, $18, $23
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb5f:
	moveperson ILEXFOREST_BIRD, $16, $1f
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb66:
	moveperson ILEXFOREST_BIRD, $f, $1d
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb6d:
	moveperson ILEXFOREST_BIRD, $a, $23
	appear ILEXFOREST_BIRD
	return

UnknownScript_0x6eb74:
	moveperson ILEXFOREST_BIRD, $6, $1c
	appear ILEXFOREST_BIRD
	return

YoungsterScript_0x6eb7b:
	faceplayer
	loadfont
	checkevent EVENT_HERDED_FARFETCHD
	iftrue UnknownScript_0x6eb89
	writetext UnknownText_0x6ef5c
	waitbutton
	closetext
	end

UnknownScript_0x6eb89:
	writetext UnknownText_0x6f019
	waitbutton
	closetext
	end

BirdScript_0x6eb8f:
	copybytetovar FarfetchdPosition
	if_equal $1, UnknownScript_0x6ebba
	if_equal $2, UnknownScript_0x6ebd9
	if_equal $3, UnknownScript_0x6ec02
	if_equal $4, UnknownScript_0x6ec2b
	if_equal $5, UnknownScript_0x6ec54
	if_equal $6, UnknownScript_0x6eca7
	if_equal $7, UnknownScript_0x6ecd0
	if_equal $8, UnknownScript_0x6ed0e
	if_equal $9, UnknownScript_0x6ed50
	if_equal $a, UnknownScript_0x6ed96
UnknownScript_0x6ebba:
	faceplayer
	loadfont
	writetext UnknownText_0x6f06f
	keeptextopen
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	applymovement ILEXFOREST_BIRD, MovementData_0x6ee8f
	moveperson ILEXFOREST_BIRD, $f, $19
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $2
	end

UnknownScript_0x6ebd9:
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ebf1
	applymovement ILEXFOREST_BIRD, MovementData_0x6ee95
	moveperson ILEXFOREST_BIRD, $14, $18
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $3
	end

UnknownScript_0x6ebf1:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ee9e
	moveperson ILEXFOREST_BIRD, $f, $1d
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $8
	end

UnknownScript_0x6ec02:
	scall UnknownScript_0x6eda1
	if_equal $2, UnknownScript_0x6ec1a
	applymovement ILEXFOREST_BIRD, MovementData_0x6eea4
	moveperson ILEXFOREST_BIRD, $1d, $16
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $4
	end

UnknownScript_0x6ec1a:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eeab
	moveperson ILEXFOREST_BIRD, $f, $19
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $2
	end

UnknownScript_0x6ec2b:
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ec43
	applymovement ILEXFOREST_BIRD, MovementData_0x6eeb1
	moveperson ILEXFOREST_BIRD, $1c, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $5
	end

UnknownScript_0x6ec43:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eeb8
	moveperson ILEXFOREST_BIRD, $14, $18
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $3
	end

UnknownScript_0x6ec54:
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ec85
	if_equal $2, UnknownScript_0x6ec74
	if_equal $3, UnknownScript_0x6ec96
	applymovement ILEXFOREST_BIRD, MovementData_0x6eebd
	moveperson ILEXFOREST_BIRD, $18, $23
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $6
	end

UnknownScript_0x6ec74:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eec7
	moveperson ILEXFOREST_BIRD, $16, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $7
	end

UnknownScript_0x6ec85:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eecc
	moveperson ILEXFOREST_BIRD, $1d, $16
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $4
	end

UnknownScript_0x6ec96:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eed2
	moveperson ILEXFOREST_BIRD, $1d, $16
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $4
	end

UnknownScript_0x6eca7:
	scall UnknownScript_0x6eda1
	if_equal $3, UnknownScript_0x6ecbf
	applymovement ILEXFOREST_BIRD, MovementData_0x6eee6
	moveperson ILEXFOREST_BIRD, $16, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $7
	end

UnknownScript_0x6ecbf:
	applymovement ILEXFOREST_BIRD, MovementData_0x6eeef
	moveperson ILEXFOREST_BIRD, $1c, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $5
	end

UnknownScript_0x6ecd0:
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ecfd
	if_equal $2, UnknownScript_0x6ecec
	applymovement ILEXFOREST_BIRD, MovementData_0x6eef8
	moveperson ILEXFOREST_BIRD, $f, $1d
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $8
	end

UnknownScript_0x6ecec:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef00
	moveperson ILEXFOREST_BIRD, $18, $23
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $6
	end

UnknownScript_0x6ecfd:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef09
	moveperson ILEXFOREST_BIRD, $1c, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $5
	end

UnknownScript_0x6ed0e:
	scall UnknownScript_0x6eda1
	if_equal $1, UnknownScript_0x6ed3f
	if_equal $2, UnknownScript_0x6ed3f
	if_equal $3, UnknownScript_0x6ed2e
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef10
	moveperson ILEXFOREST_BIRD, $a, $23
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $9
	end

UnknownScript_0x6ed2e:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef18
	moveperson ILEXFOREST_BIRD, $16, $1f
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $7
	end

UnknownScript_0x6ed3f:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef1e
	moveperson ILEXFOREST_BIRD, $f, $19
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $2
	end

UnknownScript_0x6ed50:
	scall UnknownScript_0x6eda1
	if_equal $0, UnknownScript_0x6ed85
	if_equal $3, UnknownScript_0x6ed74
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef23
	moveperson ILEXFOREST_BIRD, $6, $1c
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $a
	appear ILEXFOREST_BLACK_BELT
	setevent EVENT_CHARCOAL_KILN_BOSS
	setevent EVENT_HERDED_FARFETCHD
	end

UnknownScript_0x6ed74:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef33
	moveperson ILEXFOREST_BIRD, $f, $1d
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $8
	end

UnknownScript_0x6ed85:
	applymovement ILEXFOREST_BIRD, MovementData_0x6ef3d
	moveperson ILEXFOREST_BIRD, $f, $1d
	disappear ILEXFOREST_BIRD
	appear ILEXFOREST_BIRD
	loadvar FarfetchdPosition, $8
	end

UnknownScript_0x6ed96:
	faceplayer
	loadfont
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	end

UnknownScript_0x6eda1:
	faceplayer
	loadfont
	writetext UnknownText_0x6f086
	cry FARFETCH_D
	waitbutton
	closetext
	checkcode VAR_FACING
	end

BlackBeltScript_0x6edae:
	faceplayer
	loadfont
	checkevent EVENT_GOT_HM01_CUT
	iftrue UnknownScript_0x6edd8
	writetext UnknownText_0x6f099
	keeptextopen
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext UnknownText_0x6f141
	waitbutton
	closetext
	setevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_ILEX_FOREST_APPRENTICE
	setevent EVENT_ILEX_FOREST_CHARCOAL_MASTER
	clearevent EVENT_CHARCOAL_KILN_FARFETCH_D
	clearevent EVENT_CHARCOAL_KILN_APPRENTICE
	clearevent EVENT_CHARCOAL_KILN_BOSS
	end

UnknownScript_0x6edd8:
	writetext UnknownText_0x6f1c0
	waitbutton
	closetext
	end

RockerScript_0x6edde:
	faceplayer
	loadfont
	checkevent EVENT_GOT_TM02_HEADBUTT
	iftrue UnknownScript_0x6edf3
	writetext UnknownText_0x6f21b
	keeptextopen
	verbosegiveitem TM_HEADBUTT
	iffalse UnknownScript_0x6edf7
	setevent EVENT_GOT_TM02_HEADBUTT
UnknownScript_0x6edf3:
	writetext UnknownText_0x6f26d
	waitbutton
UnknownScript_0x6edf7:
	closetext
	end

TrainerBug_catcherWayne:
	trainer EVENT_BEAT_BUG_CATCHER_WAYNE, BUG_CATCHER, WAYNE, Bug_catcherWayneSeenText, Bug_catcherWayneBeatenText, 0, Bug_catcherWayneScript

Bug_catcherWayneScript:
	end_if_just_battled
	loadfont
	writetext UnknownText_0x6f571
	waitbutton
	closetext
	end

LassScript_0x6ee0d:
	jumptextfaceplayer UnknownText_0x6f2af

ItemFragment_0x6ee10:
	db REVIVE, 1

ItemFragment_0x6ee12:
	db X_ATTACK, 1

ItemFragment_0x6ee14:
	db ANTIDOTE, 1

ItemFragment_0x6ee16:
	db ETHER, 1

MapIlexForestSignpostItem1:
	dwb EVENT_ILEX_FOREST_HIDDEN_ETHER, ETHER
	

MapIlexForestSignpostItem2:
	dwb EVENT_ILEX_FOREST_HIDDEN_SUPER_POTION, SUPER_POTION
	

MapIlexForestSignpostItem3:
	dwb EVENT_ILEX_FOREST_HIDDEN_FULL_HEAL, FULL_HEAL

IlexForestBoulder:
; unused
	jumpstd strengthboulder

MapIlexForestSignpost0Script:
	jumptext UnknownText_0x6f2de

MapIlexForestSignpost4Script:
	checkevent EVENT_FOREST_IS_RESTLESS
	iftrue UnknownScript_0x6ee30
	jump UnknownScript_0x6ee35

UnknownScript_0x6ee30:
	checkitem GS_BALL
	iftrue UnknownScript_0x6ee38
UnknownScript_0x6ee35:
	jumptext UnknownText_0x6f358

UnknownScript_0x6ee38:
	loadfont
	writetext UnknownText_0x6f394
	yesorno
	iftrue UnknownScript_0x6ee42
	closetext
	end

UnknownScript_0x6ee42:
	takeitem GS_BALL
	clearevent EVENT_FOREST_IS_RESTLESS
	setevent EVENT_AZALEA_TOWN_KURT
	disappear ILEXFOREST_LASS
	clearevent EVENT_ROUTE_34_ILEX_FOREST_GATE_LASS
	writetext UnknownText_0x6f43b
	waitbutton
	closetext
	pause 20
	showemote EMOTE_SHOCK, PLAYER, 20
	special Special_RotatePalettesRightMusic
	applymovement PLAYER, MovementData_0x6ef58
	pause 30
	spriteface PLAYER, DOWN
	pause 20
	clearflag ENGINE_HAVE_EXAMINED_GS_BALL
	special Special_CelebiShrineEvent
	scriptedpokedata CELEBI, 30
	startbattle
	returnafterbattle
	pause 20
	special CheckCaughtCelebi
	iffalse UnknownScript_0x6ee8e
	appear ILEXFOREST_KURT
	applymovement ILEXFOREST_KURT, MovementData_0x6ef4e
	loadfont
	writetext UnknownText_0x6f452
	waitbutton
	closetext
	applymovement ILEXFOREST_KURT, MovementData_0x6ef53
	disappear ILEXFOREST_KURT
UnknownScript_0x6ee8e:
	end

MovementData_0x6ee8f:
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6ee95:
	big_step_up
	big_step_up
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_down
	step_end

MovementData_0x6ee9e:
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end

MovementData_0x6eea4:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end

MovementData_0x6eeab:
	big_step_up
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

MovementData_0x6eeb1:
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end

MovementData_0x6eeb8:
	big_step_left
	jump_step_left
	big_step_left
	big_step_left
	step_end

MovementData_0x6eebd:
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

MovementData_0x6eec7:
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

MovementData_0x6eecc:
	big_step_up
	big_step_up
	big_step_up
	big_step_right
	big_step_up
	step_end

MovementData_0x6eed2:
	big_step_right
	turn_head_up
	db $3e ; movement
	turn_head_down
	db $3e ; movement
	turn_head_up
	db $3e ; movement
	big_step_down
	big_step_down
	fix_facing
	jump_step_up
	step_sleep_8
	step_sleep_8
	remove_fixed_facing
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6eee6:
	big_step_left
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_right
	big_step_up
	big_step_up
	step_end

MovementData_0x6eeef:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6eef8:
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	step_end

MovementData_0x6ef00:
	big_step_down
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	big_step_right
	big_step_right
	big_step_right
	step_end

MovementData_0x6ef09:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end

MovementData_0x6ef10:
	big_step_down
	big_step_left
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	big_step_down
	step_end

MovementData_0x6ef18:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	step_end

MovementData_0x6ef1e:
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6ef23:
	big_step_left
	big_step_left
	fix_facing
	jump_step_right
	step_sleep_8
	step_sleep_8
	remove_fixed_facing
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6ef33:
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6ef3d:
	big_step_left
	big_step_left
	fix_facing
	jump_step_right
	step_sleep_8
	step_sleep_8
	remove_fixed_facing
	big_step_right
	big_step_right
	big_step_right
	big_step_right
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	step_end

MovementData_0x6ef4e:
	step_up
	step_up
	step_up
	step_up
	step_end

MovementData_0x6ef53:
	step_down
	step_down
	step_down
	step_down
	step_end

MovementData_0x6ef58:
	fix_facing
	slow_step_down
	remove_fixed_facing
	step_end

UnknownText_0x6ef5c:
	text "Oh, man… My boss"
	line "is going to be"
	cont "steaming…"

	para "The FARFETCH'D"
	line "that CUTS trees"

	para "for charcoal took"
	line "off on me."

	para "I can't go looking"
	line "for it here in the"
	cont "ILEX FOREST."

	para "It's too big, dark"
	line "and scary for me…"
	done

UnknownText_0x6f019:
	text "Wow! Thanks a"
	line "whole bunch!"

	para "My boss's #MON"
	line "won't obey me be-"
	cont "cause I don't have"
	cont "a BADGE."
	done

UnknownText_0x6f06f:
	text "It's the missing"
	line "#MON!"
	done

UnknownText_0x6f086:
	text "FARFETCH'D: Kwaa!"
	done

UnknownText_0x6f099:
	text "Ah! My FARFETCH'D!"

	para "You found it for"
	line "us, kid?"

	para "Without it, we"
	line "wouldn't be able"

	para "to CUT trees for"
	line "charcoal."

	para "Thanks, kid!"

	para "Now, how can I"
	line "thank you…"

	para "I know! Here, take"
	line "this."
	done

UnknownText_0x6f141:
	text "That's the CUT HM."
	line "Teach that to a"

	para "#MON to clear"
	line "small trees."

	para "Of course, you"
	line "have to have the"

	para "GYM BADGE from"
	line "AZALEA to use it."
	done

UnknownText_0x6f1c0:
	text "Do you want to"
	line "apprentice as a"

	para "charcoal maker"
	line "with me?"

	para "You'll be first-"
	line "rate in ten years!"
	done

UnknownText_0x6f21b:
	text "What am I doing?"

	para "I'm shaking trees"
	line "using HEADBUTT."

	para "It's fun. Here,"
	line "you try it too!"
	done

UnknownText_0x6f26d:
	text "Rattle trees with"
	line "HEADBUTT. Some-"
	cont "times, sleeping"
	cont "#MON fall out."
	done

UnknownText_0x6f2af:
	text "Did something"
	line "happen to the"
	cont "forest's guardian?"
	done

UnknownText_0x6f2de:
	text "ILEX FOREST is"
	line "so overgrown with"

	para "trees that you"
	line "can't see the sky."

	para "Please watch out"
	line "for items that may"
	cont "have been dropped."
	done

UnknownText_0x6f358:
	text "ILEX FOREST"
	line "SHRINE…"

	para "It's in honor of"
	line "the forest's"
	cont "protector…"
	done

UnknownText_0x6f394:
	text "ILEX FOREST"
	line "SHRINE…"

	para "It's in honor of"
	line "the forest's"
	cont "protector…"

	para "Oh? What is this?"

	para "It's a hole."
	line "It looks like the"

	para "GS BALL would fit"
	line "inside it."

	para "Want to put the GS"
	line "BALL here?"
	done

UnknownText_0x6f43b:
	text "<PLAYER> put in the"
	line "GS BALL."
	done

UnknownText_0x6f452:
	text "Whew, wasn't that"
	line "something!"

	para "<PLAYER>, that was"
	line "fantastic. Thanks!"

	para "The legends about"
	line "that SHRINE were"
	cont "real after all."

	para "I feel inspired by"
	line "what I just saw."

	para "It motivates me to"
	line "make better BALLS!"

	para "I'm going!"
	done

Bug_catcherWayneSeenText:
	text "Don't sneak up on"
	line "me like that!"

	para "You frightened a"
	line "#MON away!"
	done

Bug_catcherWayneBeatenText:
	text "I hadn't seen that"
	line "#MON before…"
	done

UnknownText_0x6f571:
	text "A #MON I've"
	line "never seen before"

	para "fell out of the"
	line "tree when I used"
	cont "HEADBUTT."

	para "I ought to use"
	line "HEADBUTT in other"
	cont "places too."
	done

IlexForest_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def $5, $1, 3, ROUTE_34_ILEX_FOREST_GATE
	warp_def $2a, $3, 1, ILEX_FOREST_AZALEA_GATE
	warp_def $2b, $3, 2, ILEX_FOREST_AZALEA_GATE

.XYTriggers:
	db 0

.Signposts:
	db 5
	signpost 17, 3, SIGNPOST_READ, MapIlexForestSignpost0Script
	signpost 7, 11, SIGNPOST_ITEM, MapIlexForestSignpostItem1
	signpost 14, 22, SIGNPOST_ITEM, MapIlexForestSignpostItem2
	signpost 17, 1, SIGNPOST_ITEM, MapIlexForestSignpostItem3
	signpost 22, 8, SIGNPOST_UP, MapIlexForestSignpost4Script

.PersonEvents:
	db 11
	person_event SPRITE_BIRD, 31, 14, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, BirdScript_0x6eb8f, EVENT_ILEX_FOREST_FARFETCHD
	person_event SPRITE_YOUNGSTER, 28, 7, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, YoungsterScript_0x6eb7b, EVENT_ILEX_FOREST_APPRENTICE
	person_event SPRITE_BLACK_BELT, 28, 5, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BlackBeltScript_0x6edae, EVENT_ILEX_FOREST_CHARCOAL_MASTER
	person_event SPRITE_ROCKER, 14, 15, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RockerScript_0x6edde, -1
	person_event SPRITE_POKE_BALL, 32, 20, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x6ee10, EVENT_ILEX_FOREST_REVIVE
	person_event SPRITE_KURT, 29, 8, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_ILEX_FOREST_KURT
	person_event SPRITE_LASS, 24, 3, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LassScript_0x6ee0d, EVENT_ILEX_FOREST_LASS
	person_event SPRITE_YOUNGSTER, 1, 12, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_TRAINER, 0, TrainerBug_catcherWayne, -1
	person_event SPRITE_POKE_BALL, 17, 9, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x6ee12, EVENT_ILEX_FOREST_X_ATTACK
	person_event SPRITE_POKE_BALL, 7, 17, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x6ee14, EVENT_ILEX_FOREST_ANTIDOTE
	person_event SPRITE_POKE_BALL, 1, 27, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMFRAGMENT, 0, ItemFragment_0x6ee16, EVENT_ILEX_FOREST_ETHER
