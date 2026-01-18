--[[
Exercise 4.9: Redo the previous exercise for UTF-8 strings
]] --

local function utf8_reverse(str)
	local chars = {};
	local reversed = {};

	for _, c in utf8.codes(str) do
		table.insert(chars, utf8.char(c));
	end

	for i = #chars, 1, -1 do
		table.insert(reversed, chars[i]);
	end

	return table.concat(reversed);
end

local function ispali(str)
	local result = false;
	local filteredString = str:lower():gsub("[%s%p]", "")

	result = filteredString == utf8_reverse(filteredString);
	return result;
end


--print(ispali("step On nO pets"));
print(ispali("banana"));
print(ispali("Ăćc ćĂ"));
