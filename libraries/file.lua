--- @class file
file = {}

--- (client/menu/server) Appends a file relative to the `data` folder. 
--- [https://wiki.facepunch.com/gmod/file.Append]
--- @param name string @ The file's name.
--- @param content string @ The content which should be appended to the file.
--- @return void
function file.Append(name, content) end

--- (client/menu/server) Returns the content of a file asynchronously.All limitations of [file.Read](https://wiki.facepunch.com/gmod/file.Read) also apply. 
--- [https://wiki.facepunch.com/gmod/file.AsyncRead]
--- @param fileName string @ The name of the file.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @param callback function @ A callback function that will be called when the file read operation finishes. Arguments are:* [string](https://wiki.facepunch.com/gmod/string) fileName - The `fileName` argument above.* [string](https://wiki.facepunch.com/gmod/string) gamePath - The `gamePath` argument above.* [number](https://wiki.facepunch.com/gmod/number) status - The status of the operation. The list can be found in [FSASYNC](https://wiki.facepunch.com/gmod/Enums/FSASYNC).* [string](https://wiki.facepunch.com/gmod/string) data - The entirety of the data of the file.
--- @param sync boolean @ If `true` the file will be read synchronously.
--- @return number
function file.AsyncRead(fileName, gamePath, callback, sync) end

--- (client/menu/server) Creates a directory that is relative to the `data` folder. 
--- [https://wiki.facepunch.com/gmod/file.CreateDir]
--- @param name string @ The directory's name.
--- @return void
function file.CreateDir(name) end

--- (client/menu/server) Deletes a file or `empty` folder that is relative to the **data** folder. You can't remove any files outside of **data** folder. 
--- [https://wiki.facepunch.com/gmod/file.Delete]
--- @param name string @ The file name.
--- @return void
function file.Delete(name) end

--- (client/menu/server) Returns a boolean of whether the file or directory exists or not. 
--- [https://wiki.facepunch.com/gmod/file.Exists]
--- @param name string @ The file or directory's name.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return boolean
function file.Exists(name, gamePath) end

--- (client/menu/server) Returns a list of files and directories inside a single folder. 
--- [https://wiki.facepunch.com/gmod/file.Find]
--- @param name string @ The wildcard to search for. `models/*.mdl` will list **.mdl** files in the `models/` folder.
--- @param path string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @param sorting string @ The sorting to be used, **optional**.* `nameasc` sort the files ascending by name.* `namedesc` sort the files descending by name.* `dateasc` sort the files ascending by date.* `datedesc` sort the files descending by date.
--- @return table|table
function file.Find(name, path, sorting) end

--- (client/menu/server) Returns whether the given file is a directory or not. 
--- [https://wiki.facepunch.com/gmod/file.IsDir]
--- @param fileName string @ The file or directory's name.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return boolean
function file.IsDir(fileName, gamePath) end

--- (client/menu/server) Attempts to open a file with the given mode. 
--- [https://wiki.facepunch.com/gmod/file.Open]
--- @param fileName string @ The files name. See [file.Write](https://wiki.facepunch.com/gmod/file.Write) for details on filename restrictions when writing to files.
--- @param fileMode string @ The mode to open the file in. Possible values are:* **r** - read mode* **w** - write mode* **a** - append mode* **rb** - binary read mode* **wb** - binary write mode* **ab** - binary append mode
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return file_class
function file.Open(fileName, fileMode, gamePath) end

--- (client/menu/server) Returns the content of a file. 
--- [https://wiki.facepunch.com/gmod/file.Read]
--- @param fileName string @ The name of the file.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return string
function file.Read(fileName, gamePath) end

--- (client/menu/server) Attempts to rename a file with the given name to another given name.This function is constrained to the `data/` folder. 
--- [https://wiki.facepunch.com/gmod/file.Rename]
--- @param orignalFileName string @ The original file or folder name. See [file.Write](https://wiki.facepunch.com/gmod/file.Write) for details on filename restrictions when writing to files.**This argument will be forced lowercase.**
--- @param targetFileName string @ The target file or folder name. See [file.Write](https://wiki.facepunch.com/gmod/file.Write) for details on filename restrictions when writing to files.**This argument will be forced lowercase.**
--- @return boolean
function file.Rename(orignalFileName, targetFileName) end

--- (client/menu/server) Returns the file's size in bytes. If the file is not found, returns `-1`. 
--- [https://wiki.facepunch.com/gmod/file.Size]
--- @param fileName string @ The file's name.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return void
function file.Size(fileName, gamePath) end

--- (client/menu/server) Returns when the file or folder was last modified in Unix time. 
--- [https://wiki.facepunch.com/gmod/file.Time]
--- @param path string @ The **file** or **folder** path.
--- @param gamePath string @ The path to look for the files and directories in. See [this list](https://wiki.facepunch.com/gmod/File_Search_Paths) for a list of valid paths.
--- @return number
function file.Time(path, gamePath) end

--- (client/menu/server) Writes the given string to a file. Erases all previous data in the file. To add data without deleting previous data, use [file.Append](https://wiki.facepunch.com/gmod/file.Append). 
--- [https://wiki.facepunch.com/gmod/file.Write]
--- @param fileName string @ The name of the file being written into. The path is relative to the **data/** folder.This argument will be forced lowercase.The filename **must** end with one of the following:* .txt* .dat* .json* .xml* .csv* .jpg* .jpeg* .png* .vtf* .vmt* .mp3* .wav* .oggRestricted symbols are: `" :`
--- @param content string @ The content that will be written into the file.
--- @return void
function file.Write(fileName, content) end

