require "pry"
class BubbleSort

  def initialize
  end


  def sort(array)
    #  duplicate the array
    array = array.dup
    # first loop will run second inner_index loop 4 times, 0 excluding 4, or 0-3 index
    # for a 4 length array
    for index in 0...array.length
      binding.pry
      # the first two index are included in our comparison
      # so we do not need to reloop those and subtract 2
      # each time we loop we gain knowledge on  who is bigger
      # so we can subtract 1++ index each inner_index loop
      for inner_index in 0..(array.length - index - 2)
        binding.pry
        # if left is bigger,left switches to the right
        array[inner_index + 1], array[inner_index] = array[inner_index], array[inner_index + 1] if array[inner_index] > array[inner_index + 1]
        binding.pry
      end
    end
    return array
  end
end

sorter = BubbleSort.new

sorter.sort(["d", "b", "a", "c"])
arr = [2,0,1,3,4,5,23,1,4,5]
