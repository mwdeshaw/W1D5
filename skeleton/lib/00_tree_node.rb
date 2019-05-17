class PolyTreeNode

  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent_node)
    old_rent = self.parent
    old_rent.children.delete(self) if old_rent
    @parent = parent_node
    parent.children << self if parent
  end

  def add_child(child_node)
    child_node.parent = self
  end

  def remove_child(child_node)
    if child_node.parent == nil
      raise "Node is not a child"
    else
      child_node.parent = nil
    end 
  end

  def dfs(target_value)
    return self if self.value == target_value

    self.children.each do |child|
      current = child.dfs(target_value)
      return current unless current.nil?
    end

    nil
  end

  def bfs(target_value)
    q = [self]

    until q.empty?
      current = q.shift
      if current.value == target_value
        return current
      else
        q += current.children
      end
    end

    nil
  end

end