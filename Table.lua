---@meta

---Sets all values in the table to nil.
---@param arg table
function table.clear(arg) end

---Returns true if the value exists in the table.
---@param tbl table
---@param value any
---@return boolean found True if the value exists in the table.
function table.contains(tbl, value) end

---Makes a deepcopy of the passed table.
---@param arg table
---@param skipMetaTable boolean|nil Pass true as 2nd arg to not duplicate the metatable.
---@return table copy
function table.deepcopy(arg, skipMetaTable) end

---Compares two tables if they are equal.
---@param table1 table
---@param table2 table
---@param ignore_metatable boolean|nil
---@return boolean equal True if the tables are equal.
function table.deepcompare(table1, table2, ignore_metatable) end

---Removes an object from a table.
---@param tbl table
---@param object any
---@return boolean removed True if the object was removed from the table.
function table.delete(tbl, object) end

---Finds a value in a table.
---@param tbl table
---@param value any
---@return number|nil index Key position if the value exists, otherwise nil.
function table.find(tbl, value) end

---Flips a table so keys become values.
---@param arg table
---@return table inverted Flips a table so keys become values.
function table.invert(arg) end

---Merges table2 into table1.
---@param table1 table
---@param table2 table
---@param keepexistingentries boolean|nil If not passed, existing keys/values in table1 are overwritten with table2; otherwise table2 values are just inserted into table1.
---@return table table1 Merged table1.
function table.merge(table1, table2, keepexistingentries) end

---Returns iterator over the table, default sorted by keys. Usage: for key,value in table.pairsbykeys(table) do ... end
---@param table1 table
---@param sort fun(a:any,b:any):boolean|nil Optional custom sort function.
---@return fun(tbl:table):any,any iterator Iterator over the table sorted by keys.
function table.pairsbykeys(table1, sort) end

---Returns iterator over the table, default sorted by values. Usage: for key,value in table.pairsbyvalue(table) do ... end
---@param table1 table
---@param sort fun(a:any,b:any):boolean|nil Optional custom sort function.
---@return fun(tbl:table):any,any iterator Iterator over the table sorted by values.
function table.pairsbyvalue(table1, sort) end

---Prints the table content line by line into the minion console.
---@param arg table
function table.print(arg) end

---Returns a random value from the table.
---@param arg table
---@return any value Random value from the table.
function table.randomvalue(arg) end

---Returns a shallow copy.
---@param arg table
---@return table copy
function table.shallowcopy(arg) end

---Returns number of elements the table contains.
---@param arg table
---@return number size Number of elements the table contains. Returns 0 if arg is not a table.
function table.size(arg) end

---Returns true if the passed arg is a valid table with at least 1 entry.
---@param arg table
---@return boolean valid True if the passed arg is a valid table with at least 1 entry.
function table.valid(arg) end
