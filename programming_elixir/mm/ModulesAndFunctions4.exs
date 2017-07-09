# Implement and run a function sum(n) that uses recursion to calculate thesum of
# the integers from 1 to n. You’ll need to write this function insidea module in
# a separate file. Then load up iex, compile that file, and tryyour function.

defmodule Calculate do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end
