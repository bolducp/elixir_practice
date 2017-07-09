# Exercise:Functions-3
# The operator rem(a,b) returns the remainder after dividing a by b.
# Write a function that takes a single integer (n) and calls the function in the
# previous exercise, passing it rem(n,3), rem(n,5), and n. Call it seven times with
# the arguments 10, 11, 12, and so on.
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”

fizz_rems = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

fizz_buzz = fn n -> fizz_rems.(rem(n, 3), rem(n, 5), n) end

IO.puts fizz_buzz.(10)
IO.puts fizz_buzz.(11)
IO.puts fizz_buzz.(12)
IO.puts fizz_buzz.(13)
IO.puts fizz_buzz.(14)
IO.puts fizz_buzz.(15)
IO.puts fizz_buzz.(16)
