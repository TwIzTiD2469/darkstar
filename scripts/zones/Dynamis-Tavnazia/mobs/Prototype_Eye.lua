-----------------------------------
-- Area: Dynamis tavnazia
--  MOB: Prototype_Eye
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/dynamis");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)
local mobID = mob:getID();    
    if (mobID == 16949380 and mob:isInBattlefieldList() == false) then
        ally:addTimeToDynamis(20);
        --print("addtime 20min");
        mob:addInBattlefieldList();
    end

end;