--- @class CUserCmd
CUserCmd = {}

--- (client/server) Removes all keys from the command. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:ClearButtons]
--- @return void
function CUserCmd:ClearButtons() end

--- (client/server) Clears the movement from the command.
--- See also [CUserCmd:SetForwardMove](https://wiki.facepunch.com/gmod/CUserCmd:SetForwardMove), [CUserCmd:SetSideMove](https://wiki.facepunch.com/gmod/CUserCmd:SetSideMove) and  [CUserCmd:SetUpMove](https://wiki.facepunch.com/gmod/CUserCmd:SetUpMove). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:ClearMovement]
--- @return void
function CUserCmd:ClearMovement() end

--- (client/server) Returns an increasing number representing the index of the user cmd. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:CommandNumber]
--- @return number
function CUserCmd:CommandNumber() end

--- (client/server) Returns a bitflag indicating which buttons are pressed. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetButtons]
--- @return number
function CUserCmd:GetButtons() end

--- (client/server) The speed the client wishes to move forward with, negative if the clients wants to move backwards. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetForwardMove]
--- @return number
function CUserCmd:GetForwardMove() end

--- (client/server) Gets the current impulse from the client, usually 0. [See impulses list](https://developer.valvesoftware.com/wiki/Impulse) and some [GMod specific impulses](https://wiki.facepunch.com/gmod/CUserCmd:SetImpulse). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetImpulse]
--- @return number
function CUserCmd:GetImpulse() end

--- (client/server) Returns the scroll delta as whole number. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetMouseWheel]
--- @return number
function CUserCmd:GetMouseWheel() end

--- (client/server) Returns the delta of the angular horizontal mouse movement of the player. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetMouseX]
--- @return number
function CUserCmd:GetMouseX() end

--- (client/server) Returns the delta of the angular vertical mouse movement of the player. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetMouseY]
--- @return number
function CUserCmd:GetMouseY() end

--- (client/server) The speed the client wishes to move sideways with, positive if it wants to move right, negative if it wants to move left. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetSideMove]
--- @return number
function CUserCmd:GetSideMove() end

--- (client/server) The speed the client wishes to move up with, negative if the clients wants to move down. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetUpMove]
--- @return number
function CUserCmd:GetUpMove() end

--- (client/server) Gets the direction the player is looking in. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:GetViewAngles]
--- @return Angle
function CUserCmd:GetViewAngles() end

--- (client/server) When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening.
--- This will never return true clientside. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:IsForced]
--- @return boolean
function CUserCmd:IsForced() end

--- (client/server) Returns true if the specified button(s) is pressed. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:KeyDown]
--- @param key number @ Bitflag representing which button to check, see [IN](https://wiki.facepunch.com/gmod/Enums/IN).
--- @return boolean
function CUserCmd:KeyDown(key) end

--- (client/server) Removes a key bit from the current key bitflag. For movement you will want to use [CUserCmd:SetForwardMove](https://wiki.facepunch.com/gmod/CUserCmd:SetForwardMove), [CUserCmd:SetUpMove](https://wiki.facepunch.com/gmod/CUserCmd:SetUpMove) and [CUserCmd:SetSideMove](https://wiki.facepunch.com/gmod/CUserCmd:SetSideMove). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:RemoveKey]
--- @param button number @ Bitflag to be removed from the key bitflag, see [IN](https://wiki.facepunch.com/gmod/Enums/IN).
--- @return void
function CUserCmd:RemoveKey(button) end

--- (client/server) Forces the associated player to select a weapon. This is used internally in the default HL2 weapon selection HUD.
--- This may not work immediately if the current command is in prediction. Use [input.SelectWeapon](https://wiki.facepunch.com/gmod/input.SelectWeapon) to switch the weapon from the client when the next available command can do so. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SelectWeapon]
--- @param weapon Weapon @ The weapon entity to select.
--- @return void
function CUserCmd:SelectWeapon(weapon) end

--- (client/server) Sets the buttons as a bitflag. See also [CUserCmd:GetButtons](https://wiki.facepunch.com/gmod/CUserCmd:GetButtons). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetButtons]
--- @param buttons number @ Bitflag representing which buttons are "down", see [IN](https://wiki.facepunch.com/gmod/Enums/IN).
--- @return void
function CUserCmd:SetButtons(buttons) end

--- (client/server) Sets speed the client wishes to move forward with, negative if the clients wants to move backwards.
--- See also [CUserCmd:ClearMovement](https://wiki.facepunch.com/gmod/CUserCmd:ClearMovement), [CUserCmd:SetSideMove](https://wiki.facepunch.com/gmod/CUserCmd:SetSideMove) and [CUserCmd:SetUpMove](https://wiki.facepunch.com/gmod/CUserCmd:SetUpMove). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetForwardMove]
--- @param speed number @ The new speed to request. The client will not be able to move faster than their set walk/sprint speed.
--- @return void
function CUserCmd:SetForwardMove(speed) end

--- (client/server) Sets the impulse command to be sent to the server.
--- Here are a few examples of impulse numbers:
--- - `100` toggles their flashlight
--- - `101` gives the player all Half-Life 2 weapons with `sv_cheats` set to `1`
--- - `200` toggles holstering / restoring the current weapon  
---   When holstered, the `EF_NODRAW` flag is set on the active weapon.
--- - `154` toggles noclip
--- [See full list](https://developer.valvesoftware.com/wiki/Impulse) 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetImpulse]
--- @param impulse number @ The impulse to send.
--- @return void
function CUserCmd:SetImpulse(impulse) end

--- (client/server) Sets the scroll delta. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetMouseWheel]
--- @param speed number @ The scroll delta.
--- @return void
function CUserCmd:SetMouseWheel(speed) end

--- (client/server) Sets the delta of the angular horizontal mouse movement of the player.
--- See also [CUserCmd:SetMouseY](https://wiki.facepunch.com/gmod/CUserCmd:SetMouseY). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetMouseX]
--- @param speed number @ Angular horizontal move delta.
--- @return void
function CUserCmd:SetMouseX(speed) end

--- (client/server) Sets the delta of the angular vertical mouse movement of the player.
--- See also [CUserCmd:SetMouseX](https://wiki.facepunch.com/gmod/CUserCmd:SetMouseX). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetMouseY]
--- @param speed number @ Angular vertical move delta.
--- @return void
function CUserCmd:SetMouseY(speed) end

--- (client/server) Sets speed the client wishes to move sidewards with, positive to move right, negative to move left.
--- See also [CUserCmd:SetForwardMove](https://wiki.facepunch.com/gmod/CUserCmd:SetForwardMove) and  [CUserCmd:SetUpMove](https://wiki.facepunch.com/gmod/CUserCmd:SetUpMove). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetSideMove]
--- @param speed number @ The new speed to request.
--- @return void
function CUserCmd:SetSideMove(speed) end

--- (client/server) Sets speed the client wishes to move upwards with, negative to move down.
--- See also [CUserCmd:SetSideMove](https://wiki.facepunch.com/gmod/CUserCmd:SetSideMove) and  [CUserCmd:SetForwardMove](https://wiki.facepunch.com/gmod/CUserCmd:SetForwardMove). 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetUpMove]
--- @param speed number @ The new speed to request.
--- @return void
function CUserCmd:SetUpMove(speed) end

--- (client/server) Sets the direction the client wants to move in. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:SetViewAngles]
--- @param viewAngle Angle @ New view angles.
--- @return void
function CUserCmd:SetViewAngles(viewAngle) end

--- (client/server) Returns tick count since joining the server. 
--- [https://wiki.facepunch.com/gmod/CUserCmd:TickCount]
--- @return number
function CUserCmd:TickCount() end

