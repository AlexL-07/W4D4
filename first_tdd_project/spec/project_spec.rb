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
