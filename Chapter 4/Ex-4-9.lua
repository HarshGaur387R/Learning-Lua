--[[

Exercise 4.9: Redo the previous exercise for UTF-8 strings

]] --

local function ispali(str)
	local result = false;
	local filteredString = string.gsub(str, ' ', '');
	result = filteredString == string.reverse(filteredString);

	return result;
end


--print(ispali("step On nO pets"));
--print(ispali("banana"));
print(ispali("Ăćc ćĂ"));
