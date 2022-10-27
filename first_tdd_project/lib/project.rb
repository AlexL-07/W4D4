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

def stock_picker(stock_prices)
    raise ArgumentError.new unless stock_prices.all? {|ele| ele.is_a?(Integer)}
    hash = Hash.new {|h,k| h[k]=[]}

    stock_prices.each.with_index do |price_1, day_1|
        stock_prices.each.with_index do |price_2, day_2|
            diff = price_2 - price_1
            if day_2 > day_1 && diff > 0
                hash[diff].push(day_1,day_2)
            end 
        end 
    end 

    key_max = hash.keys.max 
    hash[key_max]
end

