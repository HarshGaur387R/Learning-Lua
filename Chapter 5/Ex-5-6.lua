local function isValid(t)
	local maxIndex = 0;

	for key, value in pairs(t) do
		if type(key) == "number" and key > maxIndex and math.floor(key) == key then
			maxIndex = key;
		end
	end


	for i = 1, maxIndex do
		if t[i] == nil then
			return false
		end
	end

	return true
end


print(isValid({ 1, 2, 3, 4 }))
print(isValid({ x = 'n', 'hello', 23, nil, 98 }))
print(isValid({ nil, 1, 2, 3, 4 }))
print(isValid({ 0, 1, 2, nil }))
