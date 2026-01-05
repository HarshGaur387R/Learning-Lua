local function randn()
	local u1 = math.random()
	local u2 = math.random()
	local z = math.sqrt(-2 * math.log(u1)) * math.cos(2 * math.pi * u2)
	return z
end

-- Example usage:
print(randn()) -- outputs a pseudo-random number ~ N(0,1)
