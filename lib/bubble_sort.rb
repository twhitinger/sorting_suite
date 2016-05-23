
class BubbleSort

  def sort(array)

    array = array.dup

    for index in 0...array.length

      for inner_index in 0..(array.length - index - 2)

        array[inner_index + 1], array[inner_index] = array[inner_index], array[inner_index + 1] if array[inner_index] > array[inner_index + 1]

      end
    end
    return array
  end
end
