require 'byebug'
class GraphNode
  attr_accessor :value, :neighbors

  def initialize(value)
    @value = value
    @neighbors = []
  end

  def bfs(start_node, target)
    queue = [start_node]
    visited = []
    # debugger
    until queue.empty?
        node = queue.shift
        return node if node.value == target
        unless visited.include?(node)
          neighbor = node.neighbors.shift
          queue.push(neighbor)
          visited.push(neighbor)
        end
    end
    nil
  end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p a.bfs(a, "b") # => GraphNode of 'b'
p a.bfs(a, "f") # => nil
