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


arr = [4,2,6,4,7,8,1,2]

bubble_sort(arr)

print arr