' Yet Another RPG Dungeon is a text based game.
' It's aimed to be a comprehensive example and or a tutorial of MY-BASIC.
' Copyright (C) 2011 - 2017 Wang Renxin. All rights reserved.
' For more information about MY-BASIC, see https://github.com/paladin-t/my_basic/

import "level.bas"
import "player.bas"

cls()
slur "Welcome to Yet Another RPG Dungeon!";

level.create()
_role = new(player)
_role.init(10, 2, 1)
_role.dead_handler = lambda (_)
(
	slur "- You are dead";
	level.status = game_status.lose
)
level.start(_role)
_turn = 1
while _role.alive
	slur "[----  Turn ", _turn, ", HP ", _role.hp, ", ATK ", _role.atk, "  ----]";
	level.format()
	input _i$
	cls()
	if level.update(_i$) then
		_turn = _turn + 1
	endif
wend
level.format()
