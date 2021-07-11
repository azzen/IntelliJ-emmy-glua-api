--- @class language
language = {}

--- (client/menu) Adds a language item. Language placeholders preceded with "#" are replaced with full text in Garry's Mod once registered with this function. 
--- [https://wiki.facepunch.com/gmod/language.Add]
--- @param placeholder string @ The key for this phrase, without the preceding "#".
--- @param fulltext string @ The phrase that should be displayed whenever this key is used.
--- @return void
function language.Add(placeholder, fulltext) end

--- (client/menu) Retrieves the translated version of inputted string. Useful for concentrating multiple translated strings. 
--- [https://wiki.facepunch.com/gmod/language.GetPhrase]
--- @param phrase string @ The phrase to translate
--- @return string
function language.GetPhrase(phrase) end

