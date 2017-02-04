' Yet Another RPG Dungeon is a text based game.
' It's aimed to be a comprehensive example and or a tutorial of MY-BASIC.
' Copyright (C) 2011 - 2017 Wang Renxin. All rights reserved.
' For more information about MY-BASIC, see https://github.com/paladin-t/my_basic/

import "entity.bas"

begin npc(entity)
	var talk_handler = nil

	start tostring()
		pay "NPC [" + name + "]"
	stop

	start talk(e)
		if talk_handler <> nil then
			talk_handler(me)
		endif
	stop
end
