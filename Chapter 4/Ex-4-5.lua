--[[Exercise 4.5: Write a function to remove a slice from a string; the slice should be given by its initial
position and its length:
 remove("hello world", 7, 4)     --> hello d
 ]] --

-- Answer :

local function remove(str, from, to)
	local newString;
	local flag = 0;

	for i = 1, from, 1 do
		if i < from then
			if not newString then
				newString = string.char(string.byte(str, i));
				goto continue;
			else
				newString = newString .. string.char(string.byte(str, i));
			end
			::continue::
		end
		flag = flag + 1;
	end

	local temp = 1;

	for a = flag, #str, 1 do
		if temp > to then
			newString = newString .. string.char(string.byte(str, a));
		end

		temp = temp + 1;
	end

	return newString
end

local function simple_remove(str, from, len)
	local newString;
	newString = string.sub(str, 1, from - 1) .. string.sub(str, from + len)
	return newString
end

print(simple_remove("hello world", 7, 4));
