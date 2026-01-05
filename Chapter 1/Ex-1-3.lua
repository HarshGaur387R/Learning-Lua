-- To Use function Interpretor use this command `print(_G["Ex-1-3"].isBoolean(0))`
local M = {}

-- Checks if the value is explicitly the boolean true or false.
function M.isBoolean(x)
  -- Uses the idiomatic way to return the result of a conditional expression
  return x == true or x == false 
end

return M