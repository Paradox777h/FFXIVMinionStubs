---@meta

---Returns true if arg2 was found in arg.
---@param arg string
---@param arg2 string
---@return boolean found True if arg2 was found in arg.
function string.contains(arg, arg2) end

---Returns true if arg is type string and length is 0.
---@param arg string
---@return boolean empty True if arg is type string and length is 0.
function string.empty(arg) end

---Returns true if arg ends with arg2.
---@param arg string
---@param arg2 string
---@return boolean ends True if arg ends with arg2.
function string.ends(arg, arg2) end

---Returns iterator, separates arg.
---@param arg string
---@param seperator string
---@return fun():string iterator Iterator separating arg. Usage: for moochable in string.split(moochables, ',') do ... end
function string.split(arg, seperator) end

---Returns true if arg starts with arg2.
---@param arg string
---@param arg2 string
---@return boolean starts True if arg starts with arg2.
function string.starts(arg, arg2) end

---Converts string to boolean.
---@param arg string
---@return boolean value
function string.toboolean(arg) end

---Returns table, separates arg.
---@param arg string
---@param seperator string
---@return table value Separates arg.
function string.totable(arg, seperator) end

---Trims arg by num characters.
---@param arg string
---@param num integer
---@return boolean success Trims arg by num characters.
function string.trim(arg, num) end

---Returns true if arg is type string.
---@param arg string
---@return boolean valid True if arg is type string.
function string.valid(arg) end

---Returns a md5 encoded number for the passed string.
---@param arg string
---@return number hash MD5 encoded number for the passed string.
function string.hash(arg) end
