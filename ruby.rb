# frozen_string_literal: true
def bubble_sort(array)
  need_sort = true
   while need_sort
    need_sort = false
    for i in 0...array.length - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        need_sort = true
      end
    end
  end
end

def bubble_sort_by(array)
  need_sort = true
  while need_sort
    need_sort = false
    for i in 0...array.length - 1
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        need_sort = true
      end
    end
  end
end

arr = [4, 3, 78, 2, 0, 2]
arr1 = %w(Hi Hello Hey)

bubble_sort(arr)
bubble_sort_by(arr1) { |left, right| left.length - right.length }

print arr
print arr1
