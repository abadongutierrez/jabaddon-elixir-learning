defmodule InsertionSortTest do
  use ExUnit.Case
  doctest InsertionSort

  test "sort an empty list" do
    assert InsertionSort.sort([]) == []
  end

  test "sort a single value list" do
    assert InsertionSort.sort([1]) == [1]
  end

  test "sort 1" do
    assert InsertionSort.sort([2, 1]) == [1, 2]
  end

  test "sort 2" do
    assert InsertionSort.sort([2, 1, 10, 5, 4]) == [1, 2, 4, 5, 10]
  end
end
