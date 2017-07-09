# Exercise:Functions-4
# Write a function prefix that takes a string. It should return a new function
# that takes a second string. When that second function is called, it will
# return a string containing the first string, a space, and the second string.

prefix = fn prefix -> fn word -> prefix <> " " <> word end end
prefix_v2 = fn prefix -> fn word -> "#{prefix} #{word}" end end

IO.puts prefix.("hello").("world")
IO.puts prefix_v2.("hello").("world")
