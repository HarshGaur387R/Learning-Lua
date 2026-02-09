-- Exercise 6.3: Write a function that takes an arbitrary number of values and returns all of them, except
-- the last one

local function foo(...)
    local args = table.pack(...);

    return table.unpack(args, 1, args.n - 1)
end


print(foo(1,2,3,4,5,6,7,8))