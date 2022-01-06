def bubble_sort(unsorted_array)
  while !sorted?(unsorted_array) do
    unsorted_array.each_with_index do |key, index|
      if index <= unsorted_array.length - 2
        if unsorted_array[index] > unsorted_array[index + 1]
          swapValues(unsorted_array, index)
        end
      end
    end
  end
  unsorted_array
end

def sorted?(checked_array)
  checked_array.each_with_index do |key, index|
    if index <= checked_array.length - 2
      if checked_array[index] > checked_array[index + 1]
        return false
      end
    end
  end
  return true
end

def swapValues(array_swap, index)
  temp = array_swap[index]
  array_swap[index] = array_swap[index + 1]
  array_swap[index + 1] = temp
end

bubble_sort([4,3,78,2,0,2])