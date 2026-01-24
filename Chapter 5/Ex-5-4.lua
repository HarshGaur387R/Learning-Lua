--[[
Exercise 5.4: We can represent a polynomial anxn + an-1xn-1 + ... + a1x1 + a0 in Lua as a list of its coef
ficients, such as {a0, a1, ..., an}.

Write a function that takes a polynomial (represented as a table) and a value for x and returns the poly
nomial value
]] --

local function calculate_polynomial(coeffecients, x)
	local value = 0;

	for i = 1, #coeffecients, 1 do
		value = value + (coeffecients[i] * math.pow(x, i - 1));
	end


	return value
end


print(calculate_polynomial({ 2, 3, 5 }, 2))
print(calculate_polynomial({ 1, -1 }, 5))
print(calculate_polynomial({ 0, 0, 1 }, 4))
print(calculate_polynomial({ 7 }, 1))
print(calculate_polynomial({ 1, 0, 2 }, 3))
