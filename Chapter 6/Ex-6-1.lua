-- Exercise 6.1: Write a function that takes an array and prints all its elements.


local function printArray(...)
    local args = table.pack(...);

    for i = 1, #args, 1 do
        print(args[i])
    end

end


printArray(1, 2, 3, 4,5, 6, 7, "Hello", 8, "World")