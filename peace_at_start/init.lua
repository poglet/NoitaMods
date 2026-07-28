-- Append the perk removal script to the game's default perk list
ModLuaFileAppend("data/scripts/perks/perk_list.lua", "mods/peace_at_start/files/perkpoolremove.lua")

dofile_once("data/scripts/perks/perk.lua")

local perks = {"PEACE_WITH_GODS"}

function OnPlayerSpawned(player_entity)
local init_check_flag = "peace_at_start_init_done"
if GameHasFlagRun(init_check_flag) then return end
    GameAddFlagRun(init_check_flag)

    for i, perk_name in ipairs(perks) do
        local perk_entity = perk_spawn(0, 0, perk_name)
        if perk_entity ~= nil then
            perk_pickup(perk_entity, player_entity, EntityGetName(perk_entity), false, false)
        end
    end
end
