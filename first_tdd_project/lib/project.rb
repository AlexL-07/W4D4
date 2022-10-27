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

def my_transpose
end

def stock_picker
end

