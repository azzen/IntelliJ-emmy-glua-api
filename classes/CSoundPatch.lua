--- @class CSoundPatch
CSoundPatch = {}

--- (client/server) Adjust the pitch, alias the speed at which the sound is being played.
--- This invokes the [GM:EntityEmitSound](https://wiki.facepunch.com/gmod/GM:EntityEmitSound). 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:ChangePitch]
--- @param pitch number @ The pitch can range from 0-255. Where 100 is the original pitch.
--- @param deltaTime number @ The time to fade from previous to the new pitch.
--- @return void
function CSoundPatch:ChangePitch(pitch, deltaTime) end

--- (client/server) Adjusts the volume of the sound played.
--- Appears to only work while the sound is being played. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:ChangeVolume]
--- @param volume number @ The volume ranges from 0 to 1.
--- @param deltaTime number @ Time to fade the volume from previous to new value from.
--- @return void
function CSoundPatch:ChangeVolume(volume, deltaTime) end

--- (client/server) Fades out the volume of the sound from the current volume to 0 in the given amount of seconds. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:FadeOut]
--- @param seconds number @ Fade time.
--- @return void
function CSoundPatch:FadeOut(seconds) end

--- (client/server) Returns the DSP ( Digital Signal Processor ) effect for the sound. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:GetDSP]
--- @return number
function CSoundPatch:GetDSP() end

--- (client/server) Returns the current pitch. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:GetPitch]
--- @return number
function CSoundPatch:GetPitch() end

--- (client/server) Returns the current sound level. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:GetSoundLevel]
--- @return number
function CSoundPatch:GetSoundLevel() end

--- (client/server) Returns the current volume. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:GetVolume]
--- @return number
function CSoundPatch:GetVolume() end

--- (client/server) Returns whenever the sound is being played. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:IsPlaying]
--- @return boolean
function CSoundPatch:IsPlaying() end

--- (client/server) Starts to play the sound. This will reset the sound's volume and pitch to their default values. See [CSoundPatch:PlayEx](https://wiki.facepunch.com/gmod/CSoundPatch:PlayEx) 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:Play]
--- @return void
function CSoundPatch:Play() end

--- (client/server) Same as [CSoundPatch:Play](https://wiki.facepunch.com/gmod/CSoundPatch:Play) but with 2 extra arguments allowing to set volume and pitch directly. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:PlayEx]
--- @param volume number @ The volume ranges from 0 to 1.
--- @param pitch number @ The pitch can range from 0-255.
--- @return void
function CSoundPatch:PlayEx(volume, pitch) end

--- (client/server) Sets the DSP (Digital Signal Processor) effect for the sound. Similar to [Player:SetDSP](https://wiki.facepunch.com/gmod/Player:SetDSP) but for individual sounds. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:SetDSP]
--- @param dsp number @ The DSP effect to set. Pick from the [list of DSP's](https://developer.valvesoftware.com/wiki/Dsp_presets)
--- @return void
function CSoundPatch:SetDSP(dsp) end

--- (client/server) Sets the sound level in decibel. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:SetSoundLevel]
--- @param level number @ The sound level in decibel. See [SNDLVL](https://wiki.facepunch.com/gmod/Enums/SNDLVL)
--- @return void
function CSoundPatch:SetSoundLevel(level) end

--- (client/server) Stops the sound from being played. 
--- [https://wiki.facepunch.com/gmod/CSoundPatch:Stop]
--- @return void
function CSoundPatch:Stop() end

