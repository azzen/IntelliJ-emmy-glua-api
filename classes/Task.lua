--- @class Task
Task = {}

--- (server) Initialises the AI task. Called by [ai_task.New](https://wiki.facepunch.com/gmod/ai_task.New). 
--- [https://wiki.facepunch.com/gmod/Task:Init]
--- @return void
function Task:Init() end

--- (server) Initialises the AI task as an engine task. 
--- [https://wiki.facepunch.com/gmod/Task:InitEngine]
--- @param taskname string @ The name of the task.
--- @param taskdata number @ No description provided
--- @return void
function Task:InitEngine(taskname, taskdata) end

--- (server) Initialises the AI task as NPC method-based. 
--- [https://wiki.facepunch.com/gmod/Task:InitFunctionName]
--- @param startname string @ The name of the NPC method to call on task start.
--- @param runname string @ The name of the NPC method to call on task run.
--- @param taskdata number @ No description provided
--- @return void
function Task:InitFunctionName(startname, runname, taskdata) end

--- (server) Determines if the task is an engine task (`TYPE_ENGINE`, 1). 
--- [https://wiki.facepunch.com/gmod/Task:IsEngineType]
--- @return void
function Task:IsEngineType() end

--- (server) Determines if the task is an NPC method-based task (`TYPE_FNAME`, 2). 
--- [https://wiki.facepunch.com/gmod/Task:IsFNameType]
--- @return void
function Task:IsFNameType() end

--- (server) Runs the AI task. 
--- [https://wiki.facepunch.com/gmod/Task:Run]
--- @param target NPC @ The NPC to run the task on.
--- @return void
function Task:Run(target) end

--- (server) Runs the AI task as an NPC method. This requires the task to be of type `TYPE_FNAME`. 
--- [https://wiki.facepunch.com/gmod/Task:Run_FName]
--- @param target NPC @ The NPC to run the task on.
--- @return void
function Task:Run_FName(target) end

--- (server) Starts the AI task. 
--- [https://wiki.facepunch.com/gmod/Task:Start]
--- @param target NPC @ The NPC to start the task on.
--- @return void
function Task:Start(target) end

--- (server) Starts the AI task as an NPC method. 
--- [https://wiki.facepunch.com/gmod/Task:Start_FName]
--- @param target NPC @ The NPC to start the task on.
--- @return void
function Task:Start_FName(target) end

