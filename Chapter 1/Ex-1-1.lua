function fact (n)
  if n < 1 then
    return 1;
  else
    return n * fact(n-1);
  end
end

print("Enter a number: ");
num = io.read("*n");
print(fact(num));