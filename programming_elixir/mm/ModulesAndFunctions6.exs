# Exercise:ModulesAndFunctions-6
# I’m thinking of a number between 1 and 1000....The most efficient way to find
# the number is to guess halfway betweenthe low and high numbers of the range.
# If our guess is too big, then theanswer lies between the bottom of the range
# and one less than our guess. If our guess is too small, then the answer lies
# between one more than our guess and the end of the range.
# Your API will be guess(actual,range), where range is an Elixir range.

defmodule Chop do
  def guess(actual, range) do
    first_guess = get_half(range)
    check_guess(actual, first_guess, range)
  end

  def check_guess(actual, guess, _) when actual == guess do
    "Correct: #{guess}"
  end

  def check_guess(actual, guess, first..last) when actual > guess do
    IO.puts "Guessing: #{guess}"
    next_range = (guess + 1)..last
    next_guess = get_half(next_range)
    check_guess(actual, next_guess, next_range)
  end

  def check_guess(actual, guess, first..last) do
    IO.puts "Guessing: #{guess}"
    next_range = first..(guess - 1)
    next_guess = get_half(next_range)
    check_guess(actual, next_guess, next_range)
  end

  defp get_half(first..last) do
    first + div(last - first, 2)
  end
end
