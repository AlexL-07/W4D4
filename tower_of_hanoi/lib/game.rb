require_relative "stack.rb"

class Game 
    attr_reader :stack_1, :stack_2, :stack_3
    def initialize
        @stack_1 = DiscStacks.new
        @stack_2 = DiscStacks.new([])
        @stack_3 = DiscStacks.new([])
    end

    def move(stack_removed, stack_add)
        pop = stack_removed.stacks.remove_disc
        raise "There is no disc in this stack" if pop == false
        raise "This stack is full" if stack_add.stacks.add_disc(pop) == false 
        stack_add.stacks.add_disc(pop)
    end

    def won?
        (@stack_3.stacks.length == 4) && (@stack_3.stacks == @stack_3.stacks.sort_by {|a, b| b <=> a})
    end
end