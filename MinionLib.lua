---@meta

---@class MinionHttpRequestParams
---@field host string
---@field path string
---@field port integer
---@field method '"GET"'|'"POST"'|'"PUT"'|'"DELETE"'
---@field https boolean
---@field onsuccess fun(str:string, header:string, statuscode:integer)|nil
---@field onfailure fun(error:string, header:string, statuscode:integer)|nil
---@field getheaders boolean|nil true will return the headers; can be nil if not needed.
---@field body string|nil Optional body.
---@field headers table|nil Optional headers.

---Prints out the passed variable or the result of a function into the console.
---@param ... any Variable(s) or function result(s) to print.
function d(...) end

---Prints out the current call stack into the console.
function stacktrace() end

---Closes the current game instance.
function Exit() end

---Prints out the passed variable or the result of a function into the console when gEnableLog == "1".
---@param str string
function ml_debug(str) end

---Prints out the passed variable or the result of a function into the console.
---@param str string
function ml_error(str) end

---Adds the string to the statusbar-line which gets shown on each pulse.
---@param str string
function ml_log(str) end

--- Returns the current gamestate, FFXIV.GAMESTATE.*
function GetGameState() end

---Returns tickcount from ml_global_information.Now.
---@return integer tickcount Tickcount from ml_global_information.Now.
function Now() end

---Registers a local handler to an event.
---@param eventtoregisterfor string
---@param handler fun(...)
---@param customNameHereToIdentifyYourCode string|nil
function RegisterEventHandler(eventtoregisterfor, handler, customNameHereToIdentifyYourCode) end

---Reloads all lua modules.
---@return boolean success Reloads all lua modules.
function Reload() end

---Returns ml_global_information.Now - previousTime.
---@param previousTime integer
---@return integer elapsed ml_global_information.Now - previousTime.
function TimeSince(previousTime) end

---Tries to unload the bot.
---@return boolean success Tries to unload the bot.
function Unload() end

---Queues and fires the event with 1-n arguments. Eventname and arguments need to be strings.
---Use RegisterEventHandler("eventname", handlerfunc) to register a lua function which will handle the fired event.
---@param eventname string
---@param args string Requires at least 1 argument, even if it is a blank string.
---@param ... string Additional string arguments.
function QueueEvent(eventname, args, ...) end

---Returns filepath to the root bot folder.
---@return string path Filepath to the root bot folder.
function GetStartupPath() end

---Returns filepath to the LuaMods folder.
---@return string path Filepath to the ..MinionApp/Bots/xxxx/LuaMods folder, where all Lua addon folders are.
function GetLuaModsPath() end

---For every I/O function, you need to use double backslashes in paths. Example: FolderExists("c:\\minionapp\\ILikeBeer\\Folder")
---@param fullpathtofile string
---@return boolean exists
function FileExists(fullpathtofile) end

---Loads a file which was saved before with FileSave.
---@param fullpathtofile string
---@return any data Loads a file which was saved before with FileSave.
function FileLoad(fullpathtofile) end

---Saves data to a file.
---@param fullpathtofile string
---@param data any Can be a Lua table; saves the whole table structure in a human readable file.
---@return boolean success
function FileSave(fullpathtofile, data) end

---Writes the string into the file.
---@param fullpathtofile string
---@param data string
---@return boolean success
function FileWrite(fullpathtofile, data) end

---Writes the string into the file.
---@param fullpathtofile string
---@param data string
---@param arg boolean If true, adds the data to the end of the file.
---@return boolean success
function FileWrite(fullpathtofile, data, arg) end

---Deletes a file.
---@param fullpathtofile string
---@return boolean success
function FileDelete(fullpathtofile) end

---Returns whether the file is a valid image.
---@param fullpathtofile string
---@return boolean valid
function FileIsValidImage(fullpathtofile) end

---Returns file size.
---@param fullpathtofile string
---@return number size
function FileSize(fullpathtofile) end

---Returns whether a folder exists.
---@param fullpathtofolder string
---@return boolean exists
function FolderExists(fullpathtofolder) end

---Creates a folder.
---@param fullpathtofolder string
---@return boolean success
function FolderCreate(fullpathtofolder) end

---Deletes a folder.
---@param fullpathtofolder string
---@return boolean success
function FolderDelete(fullpathtofolder) end

---Lists files in a folder.
---@param fullpathtofolder string
---@param pattern string|nil Normal regex; should be put in double brackets in Lua. Example: [[(.*)lua$]]
---@param includeFolders boolean|nil
---@return table files Table with all files in that directory.
function FolderList(fullpathtofolder, pattern, includeFolders) end

---Returns path distance.
---@param posTable table Usage: PathDistance(NavigationManager:GetPath(myPos.x,myPos.y,myPos.z,p.x,p.y,p.z))
---@return number distance
function PathDistance(posTable) end

---Performs an asynchronous HTTP request.
---Callbacks receive success(str, header, statuscode) or failed(error, header, statuscode).
---@param params MinionHttpRequestParams
function HttpRequest(params) end
