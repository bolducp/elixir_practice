# Write a function MyList.span(from,to) that returns a list of the numbers
# from up to to

defmodule MyList do
  def span(from, to) when to < from, do: []

  def span(from, to), do: [ from |  span(from + 1, to)]
end

IO.inspect MyList.span(3, 15)
