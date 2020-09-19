def merge_sort(arr)
  if arr.length > 2
    left = merge_sort(arr.slice!(0, arr.length / 2))
    right = merge_sort(arr)
    merged = merge(left, right)
  else
    return arr[0] < arr[1] ? [arr[0], arr[-1]] : [arr[-1], arr[0]] 
  end
end

def merge(left, right)
  len = left.length * 2
  merged = []
  len.times do 
    if left[0] == nil
      merged << right.shift
    elsif right[0] == nil
      merged << left.shift
    else
      left[0] < right[0] ? merged << left.shift : merged << right.shift
    end
  end
  return merged
end

p merge_sort([7,3,1,2,5,8,4,6])