defmodule ListLength do
  def call(list) do
    get_length(list, 0)
  end

  # create function inside module - acc is value ending of sum
  ## p before def is for transform function in private
  defp get_length([], acc) do
    acc
  end

  defp get_length([_head | tail], acc) do
    acc = acc + 1
    get_length(tail, acc)
  end
end
