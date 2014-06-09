
class Node < Struct.new(:name, :children)
  def initialize name, children=[]
    super(name, children)
  end
end

def __mk_tree lines
  levels = Hash.new{ |h, k| h[k] = [] }
  levels[ -1 ] = [Node.new( -1 )]
  tree = {}
  tree[-1] = levels[-1].first
  lines.each do | level, name |
    node = Node.new name
    tree[name] = node
    levels[level] << node

    parent_node = find_inferior_max_level( levels, level )

    tree[parent_node.name].children << node
  end
  tree
end

def find_inferior_max_level levels, level
  l = levels.keys.select{ |k| k < level}.max
  levels[l].last
end

def with_dir_structure str
  lines = str
    .split( /\n\r?/ )
    .map{ |line|
      line.scan( /(\W+)(\w+)/ ).flatten
    }
    .map{ |pre, suf|
      [ pre.size, suf ]
    }
      
   tree = __mk_tree lines
   require 'pry'
   binding.pry
end
