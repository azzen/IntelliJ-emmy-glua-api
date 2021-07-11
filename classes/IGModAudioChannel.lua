--- @class IGModAudioChannel
IGModAudioChannel = {}

--- (client) Enables or disables looping of audio channel, requires noblock flag. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:EnableLooping]
--- @param enable boolean @ Enable or disable looping of this audio channel.
--- @return void
function IGModAudioChannel:EnableLooping(enable) end

--- (client) Computes the [DFT (discrete Fourier transform)](https://en.wikipedia.org/wiki/Discrete_Fourier_transform) of the sound channel.The size parameter specifies the number of consecutive audio samples to use as the input to the DFT and is restricted to a power of two. A [Hann window](https://en.wikipedia.org/wiki/Hann_function) is applied to the input data.The computed DFT has the same number of frequency bins as the number of samples. Only half of this DFT is returned, since [the DFT magnitudes are symmetric for real input data](https://en.wikipedia.org/wiki/Discrete_Fourier_transform#The_real-input_DFT). The magnitudes of the DFT (values from 0 to 1) are used to fill the output table, starting at index 1.**Visualization protip:** For a size N DFT, bin k (1-indexed) corresponds to a frequency of (k - 1) / N * sampleRate.**Visualization protip:** Sound energy is proportional to the square of the magnitudes. Adding magnitudes together makes no sense physically, but adding energies does.**Visualization protip:** The human ear works on a logarithmic amplitude scale. You can convert to [decibels](https://en.wikipedia.org/wiki/Decibel) by taking 20 * [math.log10](https://wiki.facepunch.com/gmod/math.log10) of frequency magnitudes, or 10 * [math.log10](https://wiki.facepunch.com/gmod/math.log10) of energy. The decibel values will range from -infinity to 0. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:FFT]
--- @param tbl table @ The table to output the DFT magnitudes (numbers between 0 and 1) into. Indices start from 1.
--- @param size number @ The number of samples to use. See [FFT](https://wiki.facepunch.com/gmod/Enums/FFT)
--- @return number
function IGModAudioChannel:FFT(tbl, size) end

--- (client) Returns 3D cone of the sound channel. See [IGModAudioChannel:Set3DCone](https://wiki.facepunch.com/gmod/IGModAudioChannel:Set3DCone). 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Get3DCone]
--- @return number|number|number
function IGModAudioChannel:Get3DCone() end

--- (client) Returns if the sound channel is currently in 3D mode or not. This value will be affected by [IGModAudioChannel:Set3DEnabled](https://wiki.facepunch.com/gmod/IGModAudioChannel:Set3DEnabled). 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Get3DEnabled]
--- @return boolean
function IGModAudioChannel:Get3DEnabled() end

--- (client) Returns 3D fade distances of a sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Get3DFadeDistance]
--- @return number|number
function IGModAudioChannel:Get3DFadeDistance() end

--- (client) Returns the average bit rate of the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetAverageBitRate]
--- @return number
function IGModAudioChannel:GetAverageBitRate() end

--- (client) Retrieves the number of bits per sample of the sound channel.Doesn't work for mp3 and ogg files. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetBitsPerSample]
--- @return number
function IGModAudioChannel:GetBitsPerSample() end

--- (client) Returns the filename for the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetFileName]
--- @return string
function IGModAudioChannel:GetFileName() end

--- (client) Returns the length of sound played by the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetLength]
--- @return number
function IGModAudioChannel:GetLength() end

--- (client) Returns the right and left levels of sound played by the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetLevel]
--- @return number|number
function IGModAudioChannel:GetLevel() end

--- (client) Gets the relative volume of the left and right channels. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetPan]
--- @return number
function IGModAudioChannel:GetPan() end

--- (client) Returns the playback rate of the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetPlaybackRate]
--- @return number
function IGModAudioChannel:GetPlaybackRate() end

--- (client) Returns position of the sound channel 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetPos]
--- @return Vector
function IGModAudioChannel:GetPos() end

--- (client) Returns the sample rate for currently playing sound. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetSamplingRate]
--- @return number
function IGModAudioChannel:GetSamplingRate() end

--- (client) Returns the state of a sound channel 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetState]
--- @return number
function IGModAudioChannel:GetState() end

--- (client) Retrieves HTTP headers from a bass stream channel created by [sound.PlayURL](https://wiki.facepunch.com/gmod/sound.PlayURL), if available. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTagsHTTP]
--- @return table
function IGModAudioChannel:GetTagsHTTP() end

--- (client) Retrieves the ID3 version 1 info from a bass channel created by [sound.PlayFile](https://wiki.facepunch.com/gmod/sound.PlayFile) or [sound.PlayURL](https://wiki.facepunch.com/gmod/sound.PlayURL), if available.ID3v2 is not supported. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTagsID3]
--- @return table
function IGModAudioChannel:GetTagsID3() end

--- (client) Retrieves meta stream info from a bass stream channel created by [sound.PlayURL](https://wiki.facepunch.com/gmod/sound.PlayURL), if available. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTagsMeta]
--- @return string
function IGModAudioChannel:GetTagsMeta() end

--- (client) Retrieves OGG media info tag, from a bass channel created by [sound.PlayURL](https://wiki.facepunch.com/gmod/sound.PlayURL) or [sound.PlayFile](https://wiki.facepunch.com/gmod/sound.PlayFile), if available. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTagsOGG]
--- @return table
function IGModAudioChannel:GetTagsOGG() end

--- (client) Retrieves OGG Vendor tag, usually containing the application that created the file, from a bass channel created by [sound.PlayURL](https://wiki.facepunch.com/gmod/sound.PlayURL) or [sound.PlayFile](https://wiki.facepunch.com/gmod/sound.PlayFile), if available. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTagsVendor]
--- @return string
function IGModAudioChannel:GetTagsVendor() end

--- (client) Returns the current time of the sound channel 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetTime]
--- @return number
function IGModAudioChannel:GetTime() end

--- (client) Returns volume of a sound channel 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:GetVolume]
--- @return number
function IGModAudioChannel:GetVolume() end

--- (client) Returns if the sound channel is in 3D mode or not. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Is3D]
--- @return boolean
function IGModAudioChannel:Is3D() end

--- (client) Returns whether the audio stream is block streamed or not. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:IsBlockStreamed]
--- @return boolean
function IGModAudioChannel:IsBlockStreamed() end

--- (client) Returns if the sound channel is looping or not. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:IsLooping]
--- @return boolean
function IGModAudioChannel:IsLooping() end

--- (client) Returns if the sound channel is streamed from the Internet or not. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:IsOnline]
--- @return boolean
function IGModAudioChannel:IsOnline() end

--- (client) Returns if the sound channel is valid or not. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:IsValid]
--- @return boolean
function IGModAudioChannel:IsValid() end

--- (client) Pauses the stream. It can be started again using [IGModAudioChannel:Play](https://wiki.facepunch.com/gmod/IGModAudioChannel:Play) 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Pause]
--- @return void
function IGModAudioChannel:Pause() end

--- (client) Starts playing the stream. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Play]
--- @return void
function IGModAudioChannel:Play() end

--- (client) Sets 3D cone of the sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Set3DCone]
--- @param innerAngle number @ The angle of the inside projection cone in degrees.Range is from 0 (no cone) to 360 (sphere), -1 = leave current.
--- @param outerAngle number @ The angle of the outside projection cone in degrees.Range is from 0 (no cone) to 360 (sphere), -1 = leave current.
--- @param outerVolume number @ The delta-volume outside the outer projection cone.Range is from 0 (silent) to 1 (same as inside the cone), less than 0 = leave current.
--- @return void
function IGModAudioChannel:Set3DCone(innerAngle, outerAngle, outerVolume) end

--- (client) Sets the 3D mode of the channel. This will affect [IGModAudioChannel:Get3DEnabled](https://wiki.facepunch.com/gmod/IGModAudioChannel:Get3DEnabled) but not [IGModAudioChannel:Is3D](https://wiki.facepunch.com/gmod/IGModAudioChannel:Is3D).This feature **requires** the channel to be initially created in 3D mode, i.e. [IGModAudioChannel:Is3D](https://wiki.facepunch.com/gmod/IGModAudioChannel:Is3D) should return true or this function will do nothing. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Set3DEnabled]
--- @param enable boolean @ true to enable, false to disable 3D.
--- @return void
function IGModAudioChannel:Set3DEnabled(enable) end

--- (client) Sets 3D fade distances of a sound channel. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Set3DFadeDistance]
--- @param min number @ The minimum distance. The channel's volume is at maximum when the listener is within this distance.0 or less = leave current.
--- @param max number @ The maximum distance. The channel's volume stops decreasing when the listener is beyond this distance.0 or less = leave current.
--- @return void
function IGModAudioChannel:Set3DFadeDistance(min, max) end

--- (client) Sets the relative volume of the left and right channels. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:SetPan]
--- @param pan number @ Relative volume between the left and right channels. -1 means only in left channel, 0 is center and 1 is only in the right channel.
--- @return void
function IGModAudioChannel:SetPan(pan) end

--- (client) Sets the playback rate of the sound channel. May not work with high values for radio streams. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:SetPlaybackRate]
--- @param rate number @ Playback rate to set to. 1 is normal speed, 0.5 is half the normal speed, etc.
--- @return void
function IGModAudioChannel:SetPlaybackRate(rate) end

--- (client) Sets position of sound channel in case the sound channel has a 3d option set. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:SetPos]
--- @param pos Vector @ The position to put the sound into
--- @param dir Vector @ The direction of the sound
--- @return void
function IGModAudioChannel:SetPos(pos, dir) end

--- (client) Sets the sound channel to specified time ( Rewind to that position of the song ). Does not work on online radio streams.Streamed sounds must have "noblock" parameter for this to work and [IGModAudioChannel:IsBlockStreamed](https://wiki.facepunch.com/gmod/IGModAudioChannel:IsBlockStreamed) must return false. 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:SetTime]
--- @param secs number @ The time to set the stream to, in seconds.
--- @param dont_decode boolean @ Set to true to skip decoding to set time, and instead just seek to it which is faster. Certain streams do not support seeking and have to decode to the given position.
--- @return void
function IGModAudioChannel:SetTime(secs, dont_decode) end

--- (client) Sets the volume of a sound channel 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:SetVolume]
--- @param volume number @ Volume to set. 1 meaning 100% volume, 0.5 is 50% and 3 is 300%, etc.
--- @return void
function IGModAudioChannel:SetVolume(volume) end

--- (client) Stop the stream. It can be started again using [IGModAudioChannel:Play](https://wiki.facepunch.com/gmod/IGModAudioChannel:Play). 
--- [https://wiki.facepunch.com/gmod/IGModAudioChannel:Stop]
--- @return void
function IGModAudioChannel:Stop() end

