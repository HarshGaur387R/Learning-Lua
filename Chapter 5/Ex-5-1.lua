-- Exercise 5.1: What will the following script print? Explain.
local sunday = "monday"; local monday = "sunday"
t = { sunday = "monday", [sunday] = monday }
print(t.sunday, t[sunday], t[t.sunday])

--[[
	output will be - monday, sunday, sunday.
	first "monday" is because its key sunday has value "monday"
	second "sunday" is because variable sunday is initailsed with value "monday"
	third "monday" is because t.sunday is "monday" and "monday" key has value "sunday" inside the table.
]] --
