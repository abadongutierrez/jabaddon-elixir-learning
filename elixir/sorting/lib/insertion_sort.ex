defmodule InsertionSort do
  def sort([]) do
    []
  end

  def sort(list) do
    do_sort([], list)
  end

  defp do_sort(_sorted_list = [], [head | tail]) do
    do_sort([head], tail)
  end

  defp do_sort(sorted_list, [head | tail]) do
    insert(head, sorted_list) |> do_sort(tail)
  end

  defp do_sort(sorted_list, _unsorted_list = []) do
    sorted_list
  end

  defp insert(elem, []) do
    [elem]
  end

  defp insert(elem, [min | sorted_rest]) do
    if elem <= min do [ elem | [min | sorted_rest ]] else [ min | insert(elem, sorted_rest)] end
  end

end