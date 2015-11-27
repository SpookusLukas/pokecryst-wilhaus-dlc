const_value set 2
	const VIRIDIANNICKNAMESPEECHHOUSE_POKEFAN_M
	const VIRIDIANNICKNAMESPEECHHOUSE_LASS
	const VIRIDIANNICKNAMESPEECHHOUSE_MOLTRES
	const VIRIDIANNICKNAMESPEECHHOUSE_GROWLITHE

ViridianNicknameSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

PokefanMScript_0x9ae3a:
	jumptextfaceplayer UnknownText_0x9ae54

LassScript_0x9ae3d:
	jumptextfaceplayer UnknownText_0x9aecb

MoltresScript_0x9ae40:
	loadfont
	writetext UnknownText_0x9aefe
	cry SPEAROW
	waitbutton
	closetext
	end

GrowlitheScript_0x9ae4a:
	loadfont
	writetext UnknownText_0x9af10
	cry RATTATA
	waitbutton
	closetext
	end

UnknownText_0x9ae54:
	text "Do you put a lot"
	line "of thought into"

	para "naming your"
	line "#MON?"

	para "Giving them good"
	line "nicknames adds to"

	para "the fun of trading"
	line "with others."
	done

UnknownText_0x9aecb:
	text "They're SPEARY--"
	line "a SPEAROW--and"
	cont "RATTEY--a RATTATA."
	done

UnknownText_0x9aefe:
	text "SPEARY: Ch-chun!"
	done

UnknownText_0x9af10:
	text "RATTEY: Kikiii!"
	done

ViridianNicknameSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 2, VIRIDIAN_CITY
	warp_def $7, $3, 2, VIRIDIAN_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 4
	person_event SPRITE_POKEFAN_M, 4, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, PokefanMScript_0x9ae3a, -1
	person_event SPRITE_LASS, 4, 5, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, LassScript_0x9ae3d, -1
	person_event SPRITE_MOLTRES, 2, 5, SPRITEMOVEDATA_POKEMON, 0, 2, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, MoltresScript_0x9ae40, -1
	person_event SPRITE_GROWLITHE, 3, 6, SPRITEMOVEDATA_POKEMON, 0, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, GrowlitheScript_0x9ae4a, -1
