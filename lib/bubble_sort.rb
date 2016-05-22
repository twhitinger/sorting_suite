
class BubbleSort

  def sort(array)
    #  duplicate the array
    array = array.dup
    # first loop will run second inner_index loop 4 times, 0 excluding 4, or 0-3 index
    # for a 4 length array
    for index in 0...array.length

      # the first two index are included in our comparison
      # so we do not need to reloop those and subtract 2
      # each time we loop we gain knowledge on  who is bigger
      # so we can subtract 1++ index each inner_index loop
      for inner_index in 0..(array.length - index - 2)

        # if left is bigger,left switches to the right
        array[inner_index + 1], array[inner_index] = array[inner_index], array[inner_index + 1] if array[inner_index] > array[inner_index + 1]

      end
    end
    return array
  end
end

# sorter = BubbleSort.new
#
# sorted_array = sorter.sort(["d", "b", "a", "c"])
# p sorted_array
# sorted_array = sorter.sort([2,0,1,3,4,5,23,1,4,5])
# p sorted_array
# sorted_array = sorter.sort([1,2,3,4,5,6,7,8].reverse)
# p sorted_array
# sorted_array = sorter.sort([])
# p sorted_array
# sorted_array = sorter.sort([1,-44,55,-15034256])
# p sorted_array
