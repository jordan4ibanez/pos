
local localplayer
minetest.register_on_connect(function()
        localplayer = minetest.localplayer
end)


minetest.register_globalstep(function(dtime)
	if  localplayer then
		local pos = localplayer:get_pos()
		minetest.display_chat_message("X:"..pos.x.."\n\nY:"..pos.y.."\n\nZ:"..pos.z)
		minetest.display_chat_message("\n")
	end

end)
