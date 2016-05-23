
# Pseudocode for top down merge sort algorithm
# which recursively divides the input list into smaller
# sublists until the sublists are trivially sorted,
# and then merges the
# sublists while returning up the call chain.
class MergeSort

  def merge_sort(list)

  	  # Sorts the input list using the merge sort algorithm.
      # list = [4, 5, 1, 6, 3]
      #  merge_sort(list)
      # [1, 3, 4, 5, 6]

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
  	  # Takes two sorted lists and returns a single sorted list by comparing the
      # elements one at a time.
      # left = [1, 5, 6]
      # right = [2, 3, 4]
      # merge(left, right)
      # [1, 2, 3, 4, 5, 6]
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end

end

# list = [4, 5, 1, 6, 3]
# sorter = MergeSort.new
# p sorter.merge_sort(lst)
# p sorter.merge_sort([])
