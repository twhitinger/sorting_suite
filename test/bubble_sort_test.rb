require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/bubble_sort'



class BubbleTest < Minitest::Test
  def test_bubble_sort_letters
    sorter = BubbleSort.new
    sorted_array = sorter.sort(["d", "b", "a", "c"])
    assert_equal ["a", "b","c","d"], sorted_array
  end
  def test_bubble_sort_numbers
    sorter = BubbleSort.new
    sorted_array = sorter.sort([2,0,1,3,4,5,23,1,4,5])
    assert_equal [0, 1, 1, 2, 3, 4, 4, 5, 5, 23], sorted_array
  end
  def test_bubble_sort_reveresed_array
    sorter = BubbleSort.new
    sorted_array = sorter.sort([1,2,3,4,5,6,7,8].reverse)
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8], sorted_array
  end
  def test_bubble_sort_empty_array
    sorter = BubbleSort.new
    sorted_array = sorter.sort([])
    assert_equal [], sorted_array
  end
  def test_bubble_sort_negatives_too
    sorter = BubbleSort.new
    sorted_array = sorter.sort([1,-44,55,-15034256])
    assert_equal [-15034256, -44, 1, 55], sorted_array
  end

end
