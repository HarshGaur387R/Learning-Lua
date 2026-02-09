-- Exercise 6.4: Write a function to shuffle a given list. Make sure that all permutations are equally probable.

local function shuffle(...)
    local args = table.pack(...)

    ---@type any
    local temp;

    ---@type number
    local n = 0;

    for i = 1, args.n - n, 1 do
        local rand = math.random(1, args.n - n)
        temp = args[args.n - n];
        args[args.n - n] = args[rand];
        args[rand] = temp;
        n = n + 1;
    end

    return table.unpack(args);
end


-- Helper: convert a list to a string key
local function key(...)
    local args = table.pack(...)
    local parts = {}
    for i = 1, args.n do
        parts[#parts + 1] = tostring(args[i])
    end
    return table.concat(parts, ",")
end

-- Frequency test
math.randomseed(os.time())
local counts = {}
local trials = 10000

for t = 1, trials do
    local a, b, c = shuffle(1, 2, 3)
    local k = key(a, b, c)
    counts[k] = (counts[k] or 0) + 1
end

-- Print results
for perm, count in pairs(counts) do
    print(perm, count)
end
