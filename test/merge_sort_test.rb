require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/merge_sort'


class MergeTest < Minitest::Test

  def test_merge_sort_letters
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort(["d", "b", "a", "c"])
    assert_equal ["a", "b","c","d"], sorted_array
  end
  def test_merge_sort_numbers
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort([2,0,1,3,4,5,23,1,4,5])
    assert_equal [0, 1, 1, 2, 3, 4, 4, 5, 5, 23], sorted_array
  end
  def test_merge_sort_reveresed_array
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort([1,2,3,4,5,6,7,8].reverse)
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8], sorted_array
  end
  def test_merge_sort_empty_array
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort([])
    assert_equal [], sorted_array
  end
  def test_merge_sort_negatives_too
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort([1,-44,55,-15034256])
    assert_equal [-15034256, -44, 1, 55], sorted_array
  end
  def test_odd_number_of_letters
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort(["a","z","c","f","d","r","q"])
    assert_equal ["a", "c", "d", "f", "q", "r", "z"], sorted_array
  end
  def test_over_9000_numbers_reversed
    sorter = MergeSort.new
    sorted_array = sorter.merge_sort([*1..9001].reverse)
    assert_equal [*1..9001], sorted_array
  end

end
