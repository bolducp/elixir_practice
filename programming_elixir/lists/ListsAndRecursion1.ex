# Exercise: ListsAndRecursion-1 Write a mapsum function that takes a list and a
# function. It applies the function to each element of the list and then sums the
# result, so
# iex> MyList.mapsum[1, 2, 3], &(&1 * &1)

defmodule MyList do
  def mapsum(list, func), do: _mapsum(list, 0, func)

  def _mapsum([], sum, _func), do: sum
  def _mapsum([ head | tail ], sum, func), do: _mapsum(tail, func.(head) + sum, func)
end

IO.puts MyList.mapsum([1, 2, 3], &(&1 * &1))
