--[[Exercise 4.8: Redo the previous exercise so that it ignores differences in spaces and punctuation.]] --

local function ispali(str)
	local result = false;
	local filteredString = string.gsub(str, ' ', '');
	filteredString = string.lower(filteredString);

	result = filteredString == string.reverse(filteredString);

	return result;
end


print(ispali("step On nO pets"));
print(ispali("banana"));
