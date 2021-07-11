--- @class NEXTBOT
NEXTBOT = {}

--- (server) Called to initialize the behaviour.		This is called automatically when the NextBot is created, you should not call it manually. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:BehaveStart]
--- @return void
function NEXTBOT:BehaveStart() end

--- (server) Called to update the bot's behaviour. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:BehaveUpdate]
--- @param interval number @ How long since the last update
--- @return void
function NEXTBOT:BehaveUpdate(interval) end

--- (server) Called to update the bot's animation. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:BodyUpdate]
--- @return void
function NEXTBOT:BodyUpdate() end

--- (server) Called when the nextbot touches another entity. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnContact]
--- @param ent Entity @ The entity the nextbot came in contact with.
--- @return void
function NEXTBOT:OnContact(ent) end

--- (server) Called when the nextbot NPC sees another Nextbot NPC or a Player. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnEntitySight]
--- @param ent Entity @ the entity that was seen
--- @return void
function NEXTBOT:OnEntitySight(ent) end

--- (server) Called when the nextbot NPC loses sight of another Nextbot NPC or a Player. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnEntitySightLost]
--- @param ent Entity @ the entity that we lost sight of
--- @return void
function NEXTBOT:OnEntitySightLost(ent) end

--- (server) Called when the bot is ignited. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnIgnite]
--- @return void
function NEXTBOT:OnIgnite() end

--- (server) Called when the bot gets hurt. This is a good place to play hurt sounds or voice lines. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnInjured]
--- @param info CTakeDamageInfo @ The damage info
--- @return void
function NEXTBOT:OnInjured(info) end

--- (server) Called when the bot gets killed. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnKilled]
--- @param info CTakeDamageInfo @ The damage info
--- @return void
function NEXTBOT:OnKilled(info) end

--- (server) Called when the bot's feet return to the ground. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnLandOnGround]
--- @param ent Entity @ The entity the nextbot has landed on.
--- @return void
function NEXTBOT:OnLandOnGround(ent) end

--- (server) Called when the bot's feet leave the ground - for whatever reason. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnLeaveGround]
--- @param ent Entity @ The entity the bot "jumped" from.
--- @return void
function NEXTBOT:OnLeaveGround(ent) end

--- (server) Called when the nextbot enters a new navigation area. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnNavAreaChanged]
--- @param old CNavArea @ The navigation area the bot just left
--- @param new CNavArea @ The navigation area the bot just entered
--- @return void
function NEXTBOT:OnNavAreaChanged(old, new) end

--- (server) Called when someone else or something else has been killed. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnOtherKilled]
--- @param victim Entity @ The victim that was killed
--- @param info CTakeDamageInfo @ The damage info
--- @return void
function NEXTBOT:OnOtherKilled(victim, info) end

--- (server) Called when the bot thinks it is stuck. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnStuck]
--- @return void
function NEXTBOT:OnStuck() end

--- (server) Called when a trace attack is done against the nextbot, allowing override of the damage being dealt by altering the [CTakeDamageInfo](https://wiki.facepunch.com/gmod/CTakeDamageInfo).This is called before [NEXTBOT:OnInjured](https://wiki.facepunch.com/gmod/NEXTBOT:OnInjured). 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnTraceAttack]
--- @param info CTakeDamageInfo @ The damage info
--- @param dir Vector @ The direction the damage goes in
--- @param trace table @ The [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult) of the attack, containing the hitgroup.
--- @return void
function NEXTBOT:OnTraceAttack(info, dir, trace) end

--- (server) Called when the bot thinks it is un-stuck. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:OnUnStuck]
--- @return void
function NEXTBOT:OnUnStuck() end

--- (server) A hook called to process nextbot logic.This hook runs in a [coroutine](https://wiki.facepunch.com/gmod/coroutine) by default. It will only be called if [NEXTBOT:BehaveStart](https://wiki.facepunch.com/gmod/NEXTBOT:BehaveStart) is not overriden. 
--- [https://wiki.facepunch.com/gmod/NEXTBOT:RunBehaviour]
--- @return void
function NEXTBOT:RunBehaviour() end

