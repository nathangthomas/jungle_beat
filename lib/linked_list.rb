class LinkedList
  attr_reader :head, :next_node

  def initialize
    @head = head
    @next_node = next_node
  end

  def append(data)
    @head = Node.new(data)
    data
  end

  def count
    count = 0
    if @head
      count += 1
    end
  end

  def to_string
    @head.data
  end

end
