require "game"
require "rspec"

describe "Game" do 
    # let(:stack_1) {double("DiskStacks", stack: [4, 3, 2, 1])}
    # let(:stack_2) {double("DiskStacks", stack: [])}
    # let(:stack_3) {double("DiskStacks", stack: [])}
    subject(:game) {Game.new}

    describe "#initialize" do
        it "should set stack 1 to be an instance of DiscStack" do 
            expect(game.instance_variable_get(:@stack_1)).to be_instance_of(DiscStacks)
        end

        it "should set stack 2 to be an instance of DiscStacks" do
            expect(game.instance_variable_get(:@stack_2)).to be_instance_of(DiscStacks)
        end

        it "should set stack 3 to be an instance of DiscStacks" do
            expect(game.instance_variable_get(:@stack_3)).to be_instance_of(DiscStacks)
        end
    end 

    describe "#move" do
        
        it "should remove a disc from a stack" do

        end

        it "should return false if there is no disc to remove within a stack" do 
        end

        it "should add a removed disc to a new stack" do
        end

        it "should return false if the stack you are trying to add it to is full" do
        end
    end

end