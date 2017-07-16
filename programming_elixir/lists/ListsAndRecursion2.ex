# Write a max(list) that returns the element with the maximum value in the list.
# (This is slightly trickier than it sounds.)


defmodule MyList do
  def max_val([]), do: []
  def max_val([x]), do: x

  def max_val([ head | tail ]), do: Kernel.max(head, max_val(tail))
end

IO.puts MyList.max_val([100, 55, 909, 3])
IO.puts MyList.max_val([1001, 55, 909, 3])
IO.puts MyList.max_val([100, 55, 909, 3000])
IO.puts MyList.max_val([100])
IO.puts MyList.max_val([])
