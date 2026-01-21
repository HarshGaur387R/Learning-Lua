--[[
Exercise 5.2: Assume the following code:
      a = {};  a.a = a
What would be the value of a.a.a.a? Is any a in that sequence somehow different from the others?
Now, add the next line to the previous code:
      a.a.a.a = 3
What would be the value of a.a.a.a now?

--]] --

local a = {}; a.a = a;

print(a)
print(a.a.a.a);

--[[
	Becuase of assinging pointer of the table 'a' a.a is now a 'circular dependency',
	so it will print its pointer's address and this chain can keep going a.a.a.a.... and they all are poiting to 	    thier original table's memmory address. so all the a's are same.

]]           --

a.a.a.a = 3; -- This will turn a.a = 3. ans end circular pointer chain.
