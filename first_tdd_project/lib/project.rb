def my_uniq(arr)
    return arr if arr.length < 2
    new_arr = []
    arr.each do |el|
        new_arr << el if !new_arr.include?(el)
    end
    new_arr
end

class Array
    def two_sum
    end
end

def my_transpose
end

def stock_picker
end

