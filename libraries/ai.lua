--- @class ai
ai = {}

--- (server) Translates a schedule name to its corresponding ID. 
--- [https://wiki.facepunch.com/gmod/ai.GetScheduleID]
--- @param sched string @ Then schedule name. In most cases, this will be the same as the [SCHED](https://wiki.facepunch.com/gmod/Enums/SCHED) name.
--- @return number
function ai.GetScheduleID(sched) end

--- (server) Returns the squad leader of the given squad. 
--- [https://wiki.facepunch.com/gmod/ai.GetSquadLeader]
--- @param squad string @ The squad name.
--- @return NPC
function ai.GetSquadLeader(squad) end

--- (server) Returns the amount of members a given squad has. 
--- [https://wiki.facepunch.com/gmod/ai.GetSquadMemberCount]
--- @param squad string @ The squad name.
--- @return number
function ai.GetSquadMemberCount(squad) end

--- (server) Returns all members of a given squad. 
--- [https://wiki.facepunch.com/gmod/ai.GetSquadMembers]
--- @param squad string @ The squad name.
--- @return table
function ai.GetSquadMembers(squad) end

--- (server) Translates a task name to its corresponding ID. 
--- [https://wiki.facepunch.com/gmod/ai.GetTaskID]
--- @param task string @ The task name.
--- @return number
function ai.GetTaskID(task) end

