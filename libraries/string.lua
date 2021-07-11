--- @class string
string = {}

--- (client/menu/server) Returns the given string's characters in their numeric ASCII representation. 
--- [https://wiki.facepunch.com/gmod/string.byte]
--- @param string string @ The string to get the chars from.
--- @param startPos number @ The first character of the string to get the byte of.
--- @param endPos number @ The last character of the string to get the byte of.
--- @return vararg
function string.byte(string, startPos, endPos) end

--- (client/menu/server) Takes the given numerical bytes and converts them to a string. 
--- [https://wiki.facepunch.com/gmod/string.char]
--- @param bytes vararg @ The bytes to create the string from.
--- @return string
function string.char(bytes) end

--- (client/menu/server) Inserts commas for every third digit. 
--- [https://wiki.facepunch.com/gmod/string.Comma]
--- @param InputNumber number @ The input number to commafy
--- @return string
function string.Comma(InputNumber) end

--- (client/menu/server) Returns the binary bytecode of the given function. 
--- [https://wiki.facepunch.com/gmod/string.dump]
--- @param func function @ The function to get the bytecode of
--- @param stripDebugInfo boolean @ True to strip the debug data, false to keep it
--- @return string
function string.dump(func, stripDebugInfo) end

--- (client/menu/server) Returns whether or not the second passed string matches the end of the first. 
--- [https://wiki.facepunch.com/gmod/string.EndsWith]
--- @param str string @ The string whose end is to be checked.
--- @param end string @ The string to be matched with the end of the first.
--- @return boolean
function string.EndsWith(str, end) end

--- (client/menu/server) Splits a string up wherever it finds the given separator.
--- This is the reverse of [string.Implode](https://wiki.facepunch.com/gmod/string.Implode). 
--- [https://wiki.facepunch.com/gmod/string.Explode]
--- @param separator string @ The string will be separated wherever this sequence is found.
--- @param str string @ The string to split up.
--- @param use_patterns boolean @ Set this to true if your separator is a [pattern](https://wiki.facepunch.com/gmod/Patterns).
--- @return table
function string.Explode(separator, str, use_patterns) end

--- (client/menu/server) Attempts to find the specified substring in a string. 
--- [https://wiki.facepunch.com/gmod/string.find]
--- @param haystack string @ The string to search in.
--- @param needle string @ The string to find, can contain patterns if enabled.
--- @param startPos number @ The position to start the search from, can be negative start position will be relative to the end position.
--- @param noPatterns boolean @ Disable patterns.
--- @return number|number|string
function string.find(haystack, needle, startPos, noPatterns) end

--- (client/menu/server) Formats the specified values into the string given. 
--- [https://wiki.facepunch.com/gmod/string.format]
--- @param format string @ The string to be formatted. Follows this format: http://www.cplusplus.com/reference/cstdio/printf/ LuaJIT supports all specifiers and doesn't support `` width and `.` presision. LuaJIT exclusives: | Format | Description | Example of the output | |:------:|:-----------:|:---------------------:| | %p | Returns pointer to supplied structure (table/function) | `0xf20a8968` | | %q | Formats a string between double quotes, using escape sequences when necessary to ensure that it can safely be read back by the Lua interpreter | `"test\1\2test"` |
--- @param formatParameters vararg @ Values to be formatted into the string.
--- @return string
function string.format(format, formatParameters) end

--- (client/menu/server) Returns the time as a formatted string or as a table if no format is given. 
--- [https://wiki.facepunch.com/gmod/string.FormattedTime]
--- @param float number @ The time in seconds to format.
--- @param format string @ An optional formatting to use. If no format it specified, a table will be returned instead.
--- @return string
function string.FormattedTime(float, format) end

--- (client/menu/server) Creates a string from a Color variable. 
--- [https://wiki.facepunch.com/gmod/string.FromColor]
--- @param color table @ The color to put in the string.
--- @return string
function string.FromColor(color) end

--- (client/menu/server) Returns char value from the specified index in the supplied string. 
--- [https://wiki.facepunch.com/gmod/string.GetChar]
--- @param str string @ The string that you will be searching with the supplied index.
--- @param index number @ The index's value of the string to be returned.
--- @return string
function string.GetChar(str, index) end

--- (client/menu/server) Returns extension of the file. 
--- [https://wiki.facepunch.com/gmod/string.GetExtensionFromFilename]
--- @param file string @ String eg. file-path to get the file extensions from.
--- @return string
function string.GetExtensionFromFilename(file) end

--- (client/menu/server) Returns file name and extension. 
--- [https://wiki.facepunch.com/gmod/string.GetFileFromFilename]
--- @param pathString string @ The string eg. file-path to get the file-name from.
--- @return string
function string.GetFileFromFilename(pathString) end

--- (client/menu/server) Returns the path only from a file's path. 
--- [https://wiki.facepunch.com/gmod/string.GetPathFromFilename]
--- @param Inputstring string @ String to get path from.
--- @return string
function string.GetPathFromFilename(Inputstring) end

--- (client/menu/server) Returns an iterator function that is called for every complete match of the pattern, all sub matches will be passed as to the loop. 
--- [https://wiki.facepunch.com/gmod/string.gfind]
--- @param data string @ The string to search in
--- @param pattern string @ The pattern to search for
--- @return function
function string.gfind(data, pattern) end

--- (client/menu/server) Using [Patterns](https://wiki.facepunch.com/gmod/Patterns), returns an iterator which will return either one value if no capture groups are defined, or any capture group matches. 
--- [https://wiki.facepunch.com/gmod/string.gmatch]
--- @param data string @ The string to search in
--- @param pattern string @ The pattern to search for
--- @return function
function string.gmatch(data, pattern) end

--- (client/menu/server) This functions main purpose is to replace certain character sequences in a string using [Patterns](https://wiki.facepunch.com/gmod/Patterns). 
--- [https://wiki.facepunch.com/gmod/string.gsub]
--- @param string string @ String which should be modified.
--- @param pattern string @ The pattern that defines what should be matched and eventually be replaced.
--- @param replacement string @ In case of a string the matched sequence will be replaced with it. In case of a table, the matched sequence will be used as key and the table will tested for the key, if a value exists it will be used as replacement. In case of a function all matches will be passed as parameters to the function, the return value(s) of the function will then be used as replacement.
--- @param maxReplaces number @ Maximum number of replacements to be made.
--- @return string|number
function string.gsub(string, pattern, replacement, maxReplaces) end

--- (client/menu/server) Joins the values of a table together to form a string.
--- This is the reverse of [string.Explode](https://wiki.facepunch.com/gmod/string.Explode) and is functionally identical to [table.concat](https://wiki.facepunch.com/gmod/table.concat), but with less features. 
--- [https://wiki.facepunch.com/gmod/string.Implode]
--- @param separator string @ The separator to insert between each piece.
--- @param pieces table @ The table of pieces to concatenate. The keys for these must be numeric and sequential.
--- @return string
function string.Implode(separator, pieces) end

--- (client/menu/server) Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings. 
--- [https://wiki.facepunch.com/gmod/string.JavascriptSafe]
--- @param str string @ The string that should be escaped.
--- @return string
function string.JavascriptSafe(str) end

--- (client/menu/server) Returns everything left of supplied place of that string. 
--- [https://wiki.facepunch.com/gmod/string.Left]
--- @param str string @ The string to extract from.
--- @param num number @ Amount of chars relative to the beginning (starting from 1).
--- @return string
function string.Left(str, num) end

--- (client/menu/server) Counts the number of characters in the string (length). This is equivalent to using the length operator (#). 
--- [https://wiki.facepunch.com/gmod/string.len]
--- @param str string @ The string to find the length of.
--- @return number
function string.len(str) end

--- (client/menu/server) Changes any upper-case letters in a string to lower-case letters. 
--- [https://wiki.facepunch.com/gmod/string.lower]
--- @param str string @ The string to convert.
--- @return string
function string.lower(str) end

--- (client/menu/server) Finds a [Pattern](https://wiki.facepunch.com/gmod/Patterns) in a string. 
--- [https://wiki.facepunch.com/gmod/string.match]
--- @param string string @ String which should be searched in for matches.
--- @param pattern string @ The pattern that defines what should be matched.
--- @param startPosition number @ The start index to start the matching from, can be negative to start the match from a position relative to the end.
--- @return vararg
function string.match(string, pattern, startPosition) end

--- (client/menu/server) Converts a digital filesize to human-readable text. 
--- [https://wiki.facepunch.com/gmod/string.NiceSize]
--- @param bytes number @ The filesize in bytes.
--- @return string
function string.NiceSize(bytes) end

--- (client/menu/server) Formats the supplied number (in seconds) to the highest possible time unit. 
--- [https://wiki.facepunch.com/gmod/string.NiceTime]
--- @param num number @ The number to format, in seconds.
--- @return string
function string.NiceTime(num) end

--- (client/menu/server) Escapes all special characters within a string, making the string safe for inclusion in a Lua pattern. 
--- [https://wiki.facepunch.com/gmod/string.PatternSafe]
--- @param str string @ The string to be sanitized
--- @return string
function string.PatternSafe(str) end

--- (client/menu/server) Repeats a string by the provided number, with an optional separator. 
--- [https://wiki.facepunch.com/gmod/string.rep]
--- @param str string @ The string to convert.
--- @param repetitions number @ Timer to repeat, this values gets rounded internally.
--- @param separator string @ String that will separate the repeated piece. Notice that it doesn't add this string to the start or the end of the result, only between the repeated parts.
--- @return string
function string.rep(str, repetitions, separator) end

--- (client/menu/server) Replaces all occurrences of the supplied second string. 
--- [https://wiki.facepunch.com/gmod/string.Replace]
--- @param str string @ The string we are seeking to replace an occurrence(s).
--- @param find string @ What we are seeking to replace.
--- @param replace string @ What to replace find with.
--- @return string
function string.Replace(str, find, replace) end

--- (client/menu/server) Reverses a string. 
--- [https://wiki.facepunch.com/gmod/string.reverse]
--- @param str string @ The string to be reversed.
--- @return string
function string.reverse(str) end

--- (client/menu/server) Returns the last n-th characters of the string. 
--- [https://wiki.facepunch.com/gmod/string.Right]
--- @param str string @ The string to extract from.
--- @param num number @ Amount of chars relative to the end (starting from 1).
--- @return string
function string.Right(str, num) end

--- (client/menu/server) Sets the character at the specific index of the string. 
--- [https://wiki.facepunch.com/gmod/string.SetChar]
--- @param InputString string @ The input string
--- @param Index number @ The character index, 1 is the first from left.
--- @param ReplacementChar string @ String to replace with.
--- @return string
function string.SetChar(InputString, Index, ReplacementChar) end

--- (client/menu/server) Splits the string into a table of strings, separated by the second argument.
--- This is an alias of [string.Explode](https://wiki.facepunch.com/gmod/string.Explode). 
--- [https://wiki.facepunch.com/gmod/string.Split]
--- @param Inputstring string @ String to split
--- @param Separator string @ Character(s) to split with.
--- @return table
function string.Split(Inputstring, Separator) end

--- (client/menu/server) Returns whether or not the first string starts with the second. 
--- [https://wiki.facepunch.com/gmod/string.StartWith]
--- @param inputStr string @ String to check.
--- @param start string @ String to check with.
--- @return boolean
function string.StartWith(inputStr, start) end

--- (client/menu/server) Removes the extension of a path. 
--- [https://wiki.facepunch.com/gmod/string.StripExtension]
--- @param Inputstring string @ The path to change.
--- @return string
function string.StripExtension(Inputstring) end

--- (client/menu/server) Returns a sub-string, starting from the character at position `StartPos` of the string (inclusive), and optionally ending at the character at position `EndPos` of the string (also inclusive). If EndPos is not given, the rest of the string is returned. 
--- [https://wiki.facepunch.com/gmod/string.sub]
--- @param string string @ The string you'll take a sub-string out of.
--- @param StartPos number @ The position of the first character that will be included in the sub-string.
--- @param EndPos number @ The position of the last character to be included in the sub-string. It can be negative to count from the end.
--- @return string
function string.sub(string, StartPos, EndPos) end

--- (client/menu/server) Fetches a Color type from a string. 
--- [https://wiki.facepunch.com/gmod/string.ToColor]
--- @param Inputstring string @ The string to convert from.
--- @return table
function string.ToColor(Inputstring) end

--- (client/menu/server) Returns given time in "MM:SS" format. 
--- [https://wiki.facepunch.com/gmod/string.ToMinutesSeconds]
--- @param time number @ Time in seconds
--- @return string
function string.ToMinutesSeconds(time) end

--- (client/menu/server) Returns given time in "MM:SS:MS" format. 
--- [https://wiki.facepunch.com/gmod/string.ToMinutesSecondsMilliseconds]
--- @param time number @ Time in seconds
--- @return string
function string.ToMinutesSecondsMilliseconds(time) end

--- (client/menu/server) Splits the string into characters and creates a sequential table of characters. 
--- [https://wiki.facepunch.com/gmod/string.ToTable]
--- @param str string @ The string you'll turn into a table.
--- @return table
function string.ToTable(str) end

--- (client/menu/server) Removes leading and trailing matches of a string. 
--- [https://wiki.facepunch.com/gmod/string.Trim]
--- @param Inputstring string @ The string to trim.
--- @param Char string @ String to match - can be multiple characters. Matches spaces by default.
--- @return string
function string.Trim(Inputstring, Char) end

--- (client/menu/server) Removes leading spaces/characters from a string. 
--- [https://wiki.facepunch.com/gmod/string.TrimLeft]
--- @param str string @ String to trim
--- @param char string @ Custom character to remove
--- @return string
function string.TrimLeft(str, char) end

--- (client/menu/server) Removes trailing spaces/passed character from a string. 
--- [https://wiki.facepunch.com/gmod/string.TrimRight]
--- @param str string @ String to remove from
--- @param char string @ Custom character to remove, default is a space
--- @return string
function string.TrimRight(str, char) end

--- (client/menu/server) Changes any lower-case letters in a string to upper-case letters. 
--- [https://wiki.facepunch.com/gmod/string.upper]
--- @param str string @ The string to convert.
--- @return string
function string.upper(str) end

