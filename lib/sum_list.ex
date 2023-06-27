defmodule SumList do
  def call(list) do
    sum(list, 0)
  end

  # create function inside module - acc is value ending of sum
  ## p before def is for transform function in private
  defp sum([], acc) do
    acc
  end

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end
