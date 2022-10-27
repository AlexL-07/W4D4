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
        res = []
        self.each_with_index do |ele_1, i_1|
            self.each_with_index do |ele_2, i_2|
                res << [i_1,i_2] if ele_1 + ele_2 == 0 && i_2 > i_1
            end 
        end 
        res 
    end
end

def my_transpose(matrix)
    raise ArgumentError.new unless matrix.all? {|ele| ele.is_a?(Array)}
    zip = []
    i = 0
    while i < matrix.length
        subzip = []
        matrix.each do |arr|
            subzip << arr[i]
        end
        zip << subzip
        i += 1
    end
    
    zip
end

def stock_picker
end

