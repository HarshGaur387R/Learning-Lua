--[[
Exercise 5.7: Write a function that inserts all elements of a given list into a given position of another given
list.
]] --

local function inserts_elements(list1, targetList, position)
    local newList = {}
    local lengthOfList1 = #list1;
    local lengthOfTargetList = #targetList;

    for i = 1, position, 1 do
        if i < position then 
            newList[i] = targetList[i];
        end
    end

    for i = 1, lengthOfList1, 1 do
        newList[position + i] = list1[i];
    end


    for i = position + 1, lengthOfTargetList, 1 do
        newList[i + lengthOfList1] = targetList[i];
    end

    return newList;
end

local res = inserts_elements({ 6, 7, 8, 9, 12 }, { 1, 2, 3, 4 }, 3)


-- Idiomatic solution

local function idiomatic_insert_elements(list1, targetList, position)
    for i = 1, #list1, 1 do
        table.insert(targetList, position + i - 1, list1[i])
    end
    return targetList
end

local res2 = idiomatic_insert_elements({ 6, 7, 8, 9, 12 }, { 1, 2, 3, 4 }, 3)

for key, value in pairs(res) do
    print(key, value)
end