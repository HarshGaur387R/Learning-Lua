--[[Exercise 4.7: Write a function to check whether a given string is a palindrome:
      > ispali("step on no pets")     --> true
      > ispali("banana")              --> false
]] --


local function ispali(str)
	local result;
	result = string.reverse(str) == str;
	return result;
end

print(ispali("step on no pets"));
print(ispali("banana"));
