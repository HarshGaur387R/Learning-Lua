local function foo(height, theta)
	local theta_rad = math.rad(theta) -- convert degrees to radians
	return (1 / 3) * math.pi * (height ^ 3) * (math.tan(theta_rad) ^ 2)
end


local val = foo(10, 30)
print(val) -- 42964.701505836
