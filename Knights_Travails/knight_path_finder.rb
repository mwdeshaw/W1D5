class KnightPathFinder

  attr_reader :root_node

  def self.valid_moves(pos)
    
  end

  def initialize(start_pos)
    @root_node = PolyTreeNode.new(start_pos)
    @end_pos = []
    build_move_tree
  end

  def build_move_tree()
    @root_node
  end
end