---@meta

---Calculates the shortest angle between two headings.
---@param heading1 table 2x table with x,y,z.
---@param heading2 table 2x table with x,y,z.
---@return number angle Shortest angle between 0 and 180 degrees.
function math.angle(heading1, heading2) end

---Returns whether two numbers are approximately equal.
---@param num1 number
---@param num2 number
---@return boolean equal
function math.approxequal(num1, num2) end

---Returns cross product.
---@param pos1 table
---@param pos2 table
---@return table result
function math.crossproduct(pos1, pos2) end

---Returns 2D distance.
---@param x number
---@param y number
---@param x1 number
---@param y1 number
---@return number distance
function math.distance2d(x, y, x1, y1) end

---Returns 3D distance between two position tables.
---@param pos1 table
---@param pos2 table
---@return number distance
function math.distance3d(pos1, pos2) end

---Returns 3D distance between two coordinate sets.
---@param x number
---@param y number
---@param z number
---@param x1 number
---@param y1 number
---@param z1 number
---@return number distance
function math.distance3d(x, y, z, x1, y1, z1) end

---Takes 3 points; first two define the line, last one is the point to measure from.
---@param p1 table First line-defining point.
---@param p2 table Second line-defining point.
---@param p3 table Point to get the distance to the line from.
---@return number distance
function math.distancepointline(p1, p2, p3) end

---Returns magnitude.
---@param pos table
---@return number magnitude
function math.magnitude(pos) end

---Rounds a number.
---@param num number
---@param decimals integer
---@return number rounded
function math.round(num, decimals) end

---Takes in a percentage from 0-100 and gives back a random number near that value.
---@param int integer Percentage from 0-100.
---@return integer value Random number near that value.
function math.randomize(int) end
