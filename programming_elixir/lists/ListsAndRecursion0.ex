

defmodule MyList do
  def sum(list), do: _sum(list,0)

  #private methods
  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)
end

defmodule MyListNoAcc do
  def sum([]), do: 0
  def sum([ head | tail ]), do: sum(head + sum(tail))
  def sum(value), do: value
end

IO.puts MyList.sum([1, 2, 3])
IO.puts MyListNoAcc.sum([1, 2, 3])
IO.puts MyListNoAcc.sum([0])
