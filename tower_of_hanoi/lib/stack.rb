# used to maintain stacks 
# game for user nad other things 
class DiscStacks
    def initialize(stack = [4, 3, 2, 1])
        @stack = stack
    end

    def remove_disc
        if @stack.length > 0
            return @stack.pop
        end
        false
    end

    def add_disc(disc)
        if @stack.length < 4
            return @stack.push(disc)
        end
        false
    end

    def peek
        @stack.last
    end

    def size 
        @stack.length
    end

    def empty
        @stack.empty?
    end

    # private 
    
    attr_reader :stack
end