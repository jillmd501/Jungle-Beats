require_relative 'node'
class LinkedList
  attr_accessor :head

  def initialize (data)
    @head = Node.new(data)
  end

  def tail
  current = @head
    until current.next_node == nil
      current = current.next_node
    end
      current
  end

  def append_node(data)
    tail.next_node = Node.new(data)
  end

  def prepend(data)
    temp = @head
    @head = Node.new(data)
    @head.next_node = temp
  end

  def includes?(data)
    current = @head
    while current
      if current.data == data
      return true
      end
      current = current.next_node
    end
  end

  def insert(data, num)
    count = 0
    current = @head
    new_node = Node.new(data)

    #find what new data points to
    until count == num
      count += 1
      current = current.next_node
    end
    new_node.next_node = current

    # find what is pointing at new data
    current = @head
    count = 0
    until count == (num - 1)
      count += 1
      current = current.next_node
    end
    current.next_node = new_node
  end

  def count
    count = 1
    current = @head
      until current.next_node == nil
        current = current.next_node
        count += 1
    end
    count
  end

  def pop(data = 1)
    data.times do
    current = @head
    until current.next_node == tail
      current = current.next_node
    end
      current.next_node = nil
      tail.data
    end
  end

  def all
    a = []
    current = @head
    until current == nil
      a << current.data
      a << " "
      current = current.next_node
    end
      a.join.strip
  end

  def find(index, amount)
  count = 0
  current = @head
    until count == index
      current = current.next_node
      count += 1
    end
      new_string = ""
      amount.times do
      current.data
      new_string << current.data + " "
      current = current.next_node
      end
      new_string.strip
    end

    def play
      `say -r 100 -v princess "#{all}"`
    end
end
