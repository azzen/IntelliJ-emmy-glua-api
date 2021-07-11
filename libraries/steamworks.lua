--- @class steamworks
steamworks = {}

--- (menu) Refreshes clients addons. 
--- [https://wiki.facepunch.com/gmod/steamworks.ApplyAddons]
--- @return void
function steamworks.ApplyAddons() end

--- (client/menu) Downloads a file from the supplied addon and saves it as a .cache file in garrysmod/cache folder.This is mostly used to download the preview image of the addon, but the game seems to also use it to download replays and saves.In case the retrieved file is an image and you need the [IMaterial](https://wiki.facepunch.com/gmod/IMaterial), use [AddonMaterial](https://wiki.facepunch.com/gmod/Global.AddonMaterial) with the path supplied from the callback. 
--- [https://wiki.facepunch.com/gmod/steamworks.Download]
--- @param workshopPreviewID string @ The Preview ID of workshop item.
--- @param uncompress boolean @ Whether to uncompress the file or not, assuming it was compressed with LZMA.You will usually want to set this to true.
--- @param resultCallback function @ The function to process retrieved data. The first and only argument is a string, containing path to the saved file.
--- @return void
function steamworks.Download(workshopPreviewID, uncompress, resultCallback) end

--- (client/menu) Downloads a Steam Workshop file by its ID and returns a path to it. 
--- [https://wiki.facepunch.com/gmod/steamworks.DownloadUGC]
--- @param workshopID string @ The ID of workshop item to download. **NOT** a file ID.
--- @param resultCallback function @ The function to process retrieved data. The first argument is a string, containing path to the saved file, or nil if the download failed to any reason. The second argument is a [File](https://wiki.facepunch.com/gmod/File) object pointing to the downloaded .gma file. The file handle will be closed after the function exits.
--- @return void
function steamworks.DownloadUGC(workshopID, resultCallback) end

--- (client/menu) Retrieves info about supplied Steam Workshop addon. 
--- [https://wiki.facepunch.com/gmod/steamworks.FileInfo]
--- @param workshopItemID string @ The ID of Steam Workshop item.
--- @param resultCallback function @ The function to process retrieved data, with the following arguments:* [table](https://wiki.facepunch.com/gmod/table) data - The data about the item, if the request succeeded, nil otherwise. See [UGCFileInfo](https://wiki.facepunch.com/gmod/Structures/UGCFileInfo).
--- @return void
function steamworks.FileInfo(workshopItemID, resultCallback) end

--- (client/menu) Retrieves a customized list of Steam Workshop addons. 
--- [https://wiki.facepunch.com/gmod/steamworks.GetList]
--- @param type string @ The type of items to retrieve. Possible values include:* popular (All invalid options will equal to this)* trending* latest* friends* followed - Items of people the player is following on Steam* friend_favs - Favorites of player's friends* favorite - Player's favorites
--- @param tags table @ A table of tags to match.
--- @param offset number @ How much of results to skip from first one. Mainly used for pages.
--- @param numRetrieve number @ How much items to retrieve, up to 50 at a time.
--- @param days number @ When getting Most Popular content from Steam, this determines a time period. ( 7 = most popular addons in last 7 days, 1 = most popular addons today, etc )
--- @param userID string @ "0" to retrieve all addons, "1" to retrieve addons only published by you, or a valid SteamID64 of a user to get workshop items of.
--- @param resultCallback function @ The function to process retrieved data. The first and only argument is a table, containing all the info, or nil in case of error
--- @return void
function steamworks.GetList(type, tags, offset, numRetrieve, days, userID, resultCallback) end

--- (client/menu) Retrieves players name by his 64bit SteamID.You must call [steamworks.RequestPlayerInfo](https://wiki.facepunch.com/gmod/steamworks.RequestPlayerInfo) a decent amount of time before calling this function. 
--- [https://wiki.facepunch.com/gmod/steamworks.GetPlayerName]
--- @param steamID64 string @ The 64bit Steam ID ( aka Community ID ) of the player
--- @return string
function steamworks.GetPlayerName(steamID64) end

--- (client/menu) Returns whenever the client is subscribed to the specified Steam Workshop item. 
--- [https://wiki.facepunch.com/gmod/steamworks.IsSubscribed]
--- @param workshopItemID string @ The ID of the Steam Workshop item.
--- @return boolean
function steamworks.IsSubscribed(workshopItemID) end

--- (client/menu) Opens the workshop website in the steam overlay browser. 
--- [https://wiki.facepunch.com/gmod/steamworks.OpenWorkshop]
--- @return void
function steamworks.OpenWorkshop() end

--- (menu) Publishes dupes, saves or demos to workshop. 
--- [https://wiki.facepunch.com/gmod/steamworks.Publish]
--- @param tags table @ The workshop tags to apply
--- @param filename string @ Path to the file to upload
--- @param image string @ Path to the image to use as icon
--- @param name string @ Name of the Workshop submission
--- @param desc string @ Description of the Workshop submission
--- @return void
function steamworks.Publish(tags, filename, image, name, desc) end

--- (client/menu) Requests information of the player with SteamID64 for later use with [steamworks.GetPlayerName](https://wiki.facepunch.com/gmod/steamworks.GetPlayerName). 
--- [https://wiki.facepunch.com/gmod/steamworks.RequestPlayerInfo]
--- @param steamID64 string @ The 64bit Steam ID of player.
--- @param callback function @ A callback function with only 1 argument - [string](https://wiki.facepunch.com/gmod/string) name.
--- @return void
function steamworks.RequestPlayerInfo(steamID64, callback) end

--- (menu) No description provided 
--- [https://wiki.facepunch.com/gmod/steamworks.SetFileCompleted]
--- @param workshopid string @ The Steam Workshop item id
--- @return string
function steamworks.SetFileCompleted(workshopid) end

--- (menu) Sets whether you have played this addon or not. This will be shown to the user in the Steam Workshop itself: 
--- [https://wiki.facepunch.com/gmod/steamworks.SetFilePlayed]
--- @param workshopid string @ The Steam Workshop item ID
--- @return string
function steamworks.SetFilePlayed(workshopid) end

--- (menu) Sets if an addon should be enabled or disabled. Call [steamworks.ApplyAddons](https://wiki.facepunch.com/gmod/steamworks.ApplyAddons) afterwards to update. 
--- [https://wiki.facepunch.com/gmod/steamworks.SetShouldMountAddon]
--- @param workshopItemID string @ The ID of the Steam Workshop item we should enable/disable
--- @param shouldMount boolean @ true to enable the item, false to disable.
--- @return void
function steamworks.SetShouldMountAddon(workshopItemID, shouldMount) end

--- (client/menu) Returns whenever the specified Steam Workshop addon will be mounted or not. 
--- [https://wiki.facepunch.com/gmod/steamworks.ShouldMountAddon]
--- @param workshopItemID string @ The ID of the Steam Workshop
--- @return boolean
function steamworks.ShouldMountAddon(workshopItemID) end

--- (menu) Subscribes to the specified workshop addon. Call [steamworks.ApplyAddons](https://wiki.facepunch.com/gmod/steamworks.ApplyAddons) afterwards to update. 
--- [https://wiki.facepunch.com/gmod/steamworks.Subscribe]
--- @param workshopItemID string @ The ID of the Steam Workshop item we should subscribe to
--- @return void
function steamworks.Subscribe(workshopItemID) end

--- (menu) Unsubscribes to the specified workshop addon. Call [steamworks.ApplyAddons](https://wiki.facepunch.com/gmod/steamworks.ApplyAddons) afterwards to update.This function should `never` be called without a user's consent and should not be called if the addon is currently in use (aka: the user is not in the main menu) as it may result in unexpected behaviour. 
--- [https://wiki.facepunch.com/gmod/steamworks.Unsubscribe]
--- @param workshopItemID string @ The ID of the Steam Workshop item we should unsubscribe from.
--- @return void
function steamworks.Unsubscribe(workshopItemID) end

--- (client/menu) Opens the workshop website for specified Steam Workshop item in the Steam overlay browser. 
--- [https://wiki.facepunch.com/gmod/steamworks.ViewFile]
--- @param workshopItemID string @ The ID of workshop item.
--- @return void
function steamworks.ViewFile(workshopItemID) end

--- (menu) Makes the user vote for the specified addon 
--- [https://wiki.facepunch.com/gmod/steamworks.Vote]
--- @param workshopItemID string @ The ID of workshop item.
--- @param upOrDown boolean @ Sets if the user should vote up/down. True makes them upvote, false down
--- @return void
function steamworks.Vote(workshopItemID, upOrDown) end

--- (client/menu) Retrieves vote info of supplied addon. 
--- [https://wiki.facepunch.com/gmod/steamworks.VoteInfo]
--- @param workshopItemID string @ The ID of workshop item.
--- @param resultCallback function @ The function to process retrieved data. The first and only argument is a table, containing all the info.
--- @return void
function steamworks.VoteInfo(workshopItemID, resultCallback) end

