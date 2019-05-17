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
  
end