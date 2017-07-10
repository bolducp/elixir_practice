# Exercise:ModulesAndFunctions-6
# I’m thinking of a number between 1 and 1000....The most efficient way to find
# the number is to guess halfway betweenthe low and high numbers of the range.
# If our guess is too big, then theanswer lies between the bottom of the range
# and one less than our guess. If our guess is too small, then the answer lies
# between one more than our guess and the end of the range.
# Your API will be guess(actual,range), where range is an Elixir range.

defmodule Chop do
  def guess(actual, first..last = range) do
    guess = first + div(last - first, 2)
    IO.puts "Guessing: #{guess}"
    check_guess(actual, guess, range)
  end

  defp check_guess(actual, guess, _) when actual == guess do
    "Correct: #{guess}"
  end

  defp check_guess(actual, guess, _first..last) when actual > guess do
    next_range = (guess + 1)..last
    guess(actual, next_range)
  end

  defp check_guess(actual, guess, first.._last) do
    next_range = first..(guess - 1)
    guess(actual, next_range)
  end
end
