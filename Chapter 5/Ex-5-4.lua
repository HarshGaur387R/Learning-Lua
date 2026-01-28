--[[
Exercise 5.4: We can represent a polynomial anxn + an-1xn-1 + ... + a1x1 + a0 in Lua as a list of its coefficients, such as {a0, a1, ..., an}.

Write a function that takes a polynomial (represented as a table) and a value for x and returns the polynomial value
]] --

local function calculate_polynomial(coefficients, x)
	local value = 0;

	for i = 1, #coefficients, 1 do
		value = value + (coefficients[i] * math.pow(x, i - 1));
	end


	return value
end


print(calculate_polynomial({ 2, 3, 5 }, 2))
print(calculate_polynomial({ 1, -1 }, 5))
print(calculate_polynomial({ 0, 0, 1 }, 4))
print(calculate_polynomial({ 7 }, 1))
print(calculate_polynomial({ 1, 0, 2 }, 3))
