require 'project'
require 'rspec'

# subject(:arr_1) {[1]}
# subject(:arr_2) {[1, 2, 1, 3, 3]}
# subject(:arr_3) {[-1, 0, 2, -3, 1]}
# subject(:arr_4) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}

describe "my_uniq" do
    let(:arr_1) {[1]}
    let(:arr_2) {[1, 2, 1, 3, 3]}
    

    before(:each) do 
        expect(arr_2).not_to receive(:uniq)
        expect(arr_2).not_to receive(:uniq!)
        my_uniq(arr_2) {|el| el }
    end

    it "should only take in a single argument" do 
        expect {my_uniq([1], [2, 3])}.to raise_error(ArgumentError)
    end
    
    it "should return arr if arr.length == 1" do 
        expect(my_uniq(arr_1)).to eq([1])
    end

    it "should return an empty array if arr.length == 0" do 
        expect(my_uniq([])).to eq([])
    end

    it "should remove the duplicates from the array and return an array of unique elements" do
        expect(my_uniq(arr_2)).to eq([1, 2, 3])
    end

    it "the output array should be in the same order as they appear in the input array" do
        expect(my_uniq(arr_2)).to eq([1, 2, 3])
    end
end


describe "Array#two_sum" do 
    let(:arr_3) {[-1, 0, 2, -3, 1]}
    let(:arr_4) {[-1, -2, 2, -3, 1]}
    let(:arr_1) {[1]}
    let(:arr_5) {[0,1,2,3]}

    it "should return an empty array if arr.length == 0" do 
        expect([].two_sum).to eq([])
    end

    it "should returns pair positions of numbers that add to 0" do 
        expect(arr_3.two_sum).to eq([[0,4]])
    end 

    it "finds multiple pairs" do 
        expect(arr_4.two_sum).to eq([[0,4],[1,2]])
    end 

    it "won't find spurious 0 pairs" do 
        expect(arr_5.two_sum).to eq([])
    end 

    it "should return empty array if no pairs are found" do 
        expect(arr_5.two_sum).to eq([])
    end 

    it "finds pairs with same element" do 
        expect([5,-5,-5].two_sum).to eq([[0,1],[0,2]])
    end 

end 

describe "my_transpose" do
    let(:arr_4) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
    let(:matrix_1) {[[0, 1, 2], [3, 4], [6]]}

    before(:each) do 
        expect(arr_4).not_to receive(:transpose)
        expect(arr_4).not_to receive(:transpose!)
        my_transpose(arr_4) {|el| el }
    end

    it "returns a 2D array with the elements in a subarray grouped by their indices" do
        expect(my_transpose(arr_4)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

    it "if subarrays contains different lengths should fill in the empty spaces with nil" do
        expect(my_transpose(matrix_1)).to eq([[0, 3, 6], [1, 4, nil], [2, nil, nil]])
    end 

    it "if argument is not a 2D array" do
        expect {my_transpose([1, 2, 3])}.to raise_error(ArgumentError)
    end
end

describe "stock_picker" do 
    let(:stock_1) {[100,50,125,150,110]}
    let(:stock_2) {['100','50','125',150,110]}
    let(:stock_3) {[150,125,110,100,50]}
    

    it "should return an array of the most profitable days" do 
        expect(stock_picker(stock_1)).to eq([1,3])
    end 

    it "should return an empty array if there is not profitable days" do 
        expect(stock_picker(stock_3)).to eq([])
    end 

    it "you have to buy the stock first before selling the stock" do 
        expect(stock_picker(stock_1)).not_to eq([3,1])
    end 

    it "should raise an argument error if the array does not only contain integers" do 
        expect {stock_picker(stock_2)}.to raise_error(ArgumentError)
    end 


end 