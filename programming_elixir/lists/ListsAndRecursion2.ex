# Write a max(list) that returns the element with the maximum value in the list.
# (This is slightly trickier than it sounds.)


defmodule MyList do
  def max_val([]), do: []

  def max_val([ head | tail ]), do: _max_val(tail, head)

  def _max_val([], max), do: max

  def _max_val([ head | tail ], max) when head > max, do: _max_val(tail, head)

  def _max_val([ head | tail ], max), do: _max_val(tail, max)
end

IO.puts MyList.max_val([100, 55, 909, 3])
IO.puts MyList.max_val([1001, 55, 909, 3])
IO.puts MyList.max_val([100, 55, 909, 3000])
IO.puts MyList.max_val([100])
IO.puts MyList.max_val([])
