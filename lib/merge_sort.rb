class MergeSort

  def merge_sort(list)

    if list.length <= 1
      list
    else
      middle = (list.length / 2)

      left = merge_sort(list[0..middle - 1])

      right = merge_sort(list[middle..list.length])

      merge(left, right)
    end
  end

  def merge(left, right)

    if left.empty?
      right
    elsif right.empty?
      left
    elsif left[0] < right[0]
      [left[0]] + merge(left[1..left.length], right)
    else
      [right[0]] + merge(left, right[1..right.length])
    end
  end

end
