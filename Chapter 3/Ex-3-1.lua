local function isNumber(value)
	local num = math.tointeger(value)

	if ("number" == type(num)) then
		print(value, 'is a valid number')
		return
	else
		print(value, 'is not a valid number')
	end
end


isNumber('.0e12')
isNumber('.e12')
isNumber('0.0e')
isNumber('0x12')
isNumber('0xABFG')
isNumber('0xA')
isNumber('FFFF')
isNumber('0xFFFFFFFF')
isNumber('0x')
isNumber('0x1P10')
isNumber('0.1e1')
isNumber('0x0.1p1')
