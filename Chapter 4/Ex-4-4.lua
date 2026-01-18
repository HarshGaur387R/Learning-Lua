local utf8 = require("utf8");

local function insert_utf8(str, n, sub)
	local start = utf8.offset(str, n);
	if not start then return str .. sub end
	return str:sub(1, start - 1) .. sub .. str:sub(start)
end

print(insert_utf8("ação", 5, "!")) --> ação!
