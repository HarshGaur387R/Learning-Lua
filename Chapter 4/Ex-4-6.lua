--[[Exercise 4.6: Redo the previous exercise for UTF-8 strings:
      > remove("ação", 2, 2)     --> ao
]] --


local utf8 = require("utf8");
local function remove(str, position, length)
	local newString;
	newString = string.sub(str, 1, utf8.offset(str, position) - 1) ..
	    string.sub(str, utf8.offset(str, length + position));
	return newString
end


print(remove("ação", 2, 2)) --> ao
print(remove("hello world", 7, 4))
