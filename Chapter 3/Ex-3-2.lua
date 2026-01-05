print(math.maxinteger * 2) -- Output : -2
-- Explaination :
-- When lua compiler reach the maximum integer 9223372036854775807 and code tries to add same number again
-- (multiplying with 2 means adding same number again) so it will jump to smallest number and start adding left over
-- numbers 9223372036854775806 from there so equation will look like this: -9223372036854775808+9223372036854775806= -2


print(math.mininteger * 2) -- Output : 0
-- Explaination :
-- This will output zero because `print(math.maxinteger * 2)` is same as -9223372036854775808 + -9223372036854775808= 0


print(math.maxinteger * math.maxinteger) --> 1
-- Explaination :
-- Overflow to double, precision collapse, rounded down to 1.

print(math.mininteger * math.mininteger) --> 0
-- Explaination :
-- Overflow to double infinity, conversion back to integer fails, yields 0.
