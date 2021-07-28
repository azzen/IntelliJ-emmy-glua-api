# IntelliJ EmmyLua GLua Documentation

Documentation representation of the Garry's Mod Lua API to be used with the [EmmyLua Plugin](https://github.com/EmmyLua/IntelliJ-EmmyLua) for IntelliJ IDEA.

There are still some errors and due to how EmmyLua and the GMod API work, autocompletion, type hinting might not work. For functions such as `FindMetaTable` or `vgui.Create` you need to tell EmmyLua what type is your variable using the `@type` annotation:
```lua
--- @type DLabel
local my_label = vgui.Create('DLabel')
-- now EmmyLua knows that my_label is a DLabel
```

## Instructions
- Copy the directories in your project's source folder and EmmyLua will do its job.
- Refresh your IDE

Now you should have glua autocompletion and quick documentation.
