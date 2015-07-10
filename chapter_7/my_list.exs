defmodule MyList do
  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head + 1 | add_1(tail) ]

  def square([]), do: []
  def square([ head | tail ]), do: [ head * head | square(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def reduce([], value, _func), do: value
  def reduce([ head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func), do: 0
  def mapsum([head|tail], func) do
    sum(map([head|tail], func))
  end

  def max([]), do: 0
  def max([ head | tail]), do: _max([ head | tail ], head)

  defp _max([], current), do: current
  defp _max([ head | tail ], value) when head > value, do: _max(tail, head)
  defp _max([ _head |tail ], value), do: _max(tail, value)


  def caesar([], n), do: []
  def caesar([ head | tail ], n) when head + n > ?z do 
    [head + n - 26| caesar(tail, n)]
  end
  def caesar([ head | tail ], n), do: [head + n | caesar(tail, n)]
end