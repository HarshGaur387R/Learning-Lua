--[[
Exercise 4.3: Write a function to insert a string into a given position of another one:
      > insert("hello world", 1, "start: ")    --> start: hello world
      > insert("hello world", 7, "small ")     --> hello small world
]] --

local function insert(str, n, sub)
	local newString = '';

	if (n == 1) then
		newString = sub .. str;
		return newString;
	elseif (n == #str) then
		newString = str .. sub;
		return newString;
	else
		newString = str:sub(1, n - 1);
		newString = newString .. sub .. str:sub(n, #str);
		return newString;
	end
end


print(insert("hello world", 7, "small "))  --> hello small world
print(insert("hello world", 1, "start: ")) --> start: hello world
print(insert("hello world", 11, "!"))      --> start: hello world
