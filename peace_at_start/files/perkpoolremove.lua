-- remove Peace with Gods from default perk pool
for i, perk in ipairs(perk_list) do
    if perk.id == "PEACE_WITH_GODS" then
        perk_list[i].not_in_default_perk_pool = true
    end
end
