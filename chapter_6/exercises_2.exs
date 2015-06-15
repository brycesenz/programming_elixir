#  Your API will be guess(actual, range) , where range is an Elixir range.
#  Your output should look similar to this:
#  iex> Chop.guess(273, 1..1000)
#  Is it 500
#  Is it 250
#  Is it 375
#  Is it 312
#  Is it 281
#  Is it 265
#  Is it 273
#  273

defmodule Chop do
  def guess(n, a..b) when a == b do
    IO.puts "#{n}"
  end

  def guess(n, a..b) do
    mid = div((a + b), 2)
    IO.puts "Is it #{mid}"
    list_1 = a..mid
    list_2 = (mid+1)..b
    guess(n, list_1, list_2)
  end

  def guess(n, a..b, c..d) when n in a..b do
    guess(n, a..b)
  end

  def guess(n, a..b, c..d) when n in c..d do
    guess(n, c..d)
  end
end