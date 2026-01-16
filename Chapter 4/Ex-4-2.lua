--[[
Exercise 4.2: Suppose you need to write a long sequence of arbitrary bytes as a literal string in Lua. What
format would you use? Consider issues like readability, maximum line length, and size.

Answer : To keep abribtrary bytes in literal string we wrap string in double quotation mark (ex: "hello")
and for readability we place \z at the end of the line. this unicode wont effect the string but keep code clean.
'/z' skips all the white-space and newline until it reach the next chracter of the string. and from there it adds a new line before the previous character. so it wont take space of all the white spaces and and new lines.

]] --



local data = "\x00\x01\x02\x03\x04\x05\x06\x07\z
              \x08\x09\x0A\x0B\x0C\x0D\x0E\x0F"


print(data);
