-- Exercise 6.2: Write a function that takes an arbitrary number of values and returns all of them, except
-- the first one.

--- this function takes n number of values and returns first every value of that array except first one.
---@param ... any
---@return any ...
local function foo(...)
    local args = table.pack(...)
    return table.unpack(args, 2, args.n)
end

print(foo(1,2,3,4,5,6))