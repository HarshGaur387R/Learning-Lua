-- Exercise 5.8: The table library offers a function table.concat, which receives a list of strings and
-- returns their concatenation:
--       print(table.concat({"hello", " ", "world"}))    --> hello world
-- Write your own version for this function.
-- Compare the performance of your implementation against the built-in version for large lists, with hundreds
-- of thousands of entries. (You can use a for loop to create those large lists.)

---@param strings table
local function my_concat(strings)
	local result;

	for i = 1, #strings, 1 do
		if result then
			result = result .. strings[i]
		elseif not result then
			result = strings[i]
		end
	end

	return result
end

---@param strings table
local function default_concat(strings)
	local result;
	result = table.concat(strings);
	return result;
end

local str = {};
for i = 1, 10000, 1 do
	str[i] = "hello" .. i .. " ";
end

local iterations = 1000
local total = 0

for i = 1, iterations do
	local start = os.clock()
	default_concat(str)
	total = total + (os.clock() - start)
end

print("Average time: " .. (total / iterations) .. " seconds")
