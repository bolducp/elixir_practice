# I defined our sum function to carry a partial total around as a second parameter. 
# I did this so I could illustrate how to use accumulators to build values.
# The sum function can also be written without an accumulator. Can you do it?

defmodule MyList do
  def sum(list), do: _sum(list,0)

  #private methods
  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)
end

defmodule MyListNoAcc do
  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)
end

IO.puts MyList.sum([1, 2, 3])
IO.puts MyListNoAcc.sum([1, 2, 3])
IO.puts MyListNoAcc.sum([0])
