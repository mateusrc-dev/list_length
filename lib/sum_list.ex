defmodule SumList do
  def call(list) do
    sum(list, 0)
  end

  def call_enum(list) do
    # Enum.sum(list) # returns sum items
    # Enum.max(list) # returns the largest value
    # Enum.min(list) # returns smaller value
    # Enum.map(list, fn elem -> elem + 1 end) # for each element performs a function
    # all query functions expect a boolean to be returned
    Enum.any?(list, fn elem -> elem > 5 end)
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
