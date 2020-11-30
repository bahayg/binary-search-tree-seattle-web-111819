class BST
    attr_accessor :data, :right, :left

    def initialize(data)
        @data = data
    end

    def insert(data)
        if data <= @data
            if left.nil?
                self.left = BST.new(data)
            else 
                self.left.insert(data)
            end
        else
            if right.nil?
                self.right = BST.new(data)
            else
                self.right.insert(data)
            end
        end
    end

    def each(&block)
        left.each(&block) if left
        block.call(data)
        right.each(&block) if right
    end
end
