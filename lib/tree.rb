class Tree
  attr_accessor :payload, :children

  def initialize(payload, children=[])
    @payload = payload
    @children = children
  end

  def depth_first(data)
    # Base Case - Node Match
    @children.each do |child|
      if child.payload == data
        return child
      elsif child.children != []
        return child.depth_first(data)
      end
    end
    if self.payload == data
      return self
    end
  end

  def breadth_first(data)
    queue = [self]
    queue.each do |item|
      if item.payload == data
        return item
      else
        item.children.each do |child|
          queue.push(child)
        end
        queue.shift
      end
    end
  end

end

