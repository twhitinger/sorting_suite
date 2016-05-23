require "pry"
class InsertionSort

  def insertion_sort(array)
    array = array.dup
      1.upto(array.length-1) do |index|
          temp = array[index]
          inner_index = index - 1
          while inner_index >= 0 and temp < array[inner_index]
              array[inner_index + 1] = array[inner_index]
              inner_index -= 1
          end
          array[inner_index + 1] = temp
      end
      array
  end
end
