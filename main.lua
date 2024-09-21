local mod = RegisterMod("The binding of DOOM", 1.0)

COLLECTIBLE_PENIS = Isaac.GetItemIdByName("penis")

function mod:statup(player, stats)
    if stats & CacheFlag.CACHE_DAMAGE == CacheFlag.CACHE_DAMAGE then
        player.Damage = player.Damage + (player:GetCollectibleNum(COLLECTIBLE_PENIS)*2)
    end
end 
mod:AddCallback(ModCallbacks.MC_EVALUATE_CACHE, mod.statup)


