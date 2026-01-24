local function calculate_polynomial(coefficients, x)
	local value = 0
	for a = #coefficients, 1, -1 do
		value = value * x + coefficients[a]
	end
	return value
end




--[[

• 	Start with the highest coefficient (7 for x^4).
• 	Multiply by x, add the next coefficient (5).
• 	Repeat: multiply by x, add the next coefficient (2).
• 	Continue until you reach the constant term (9)

7x^4 + 5x^3 + 2x^2 + 3x + 9

(((7x + 5)x + 2)x + 3)x + 9

]] --

print(calculate_polynomial({ 9, 3, 2, 5, 7 }, 2))
print(calculate_polynomial({ 1, 0, 2 }, 3))
print(calculate_polynomial({ 1, -1 }, 5))
print(calculate_polynomial({ 0, 0, 1 }, 4))
print(calculate_polynomial({ 7 }, 3))
