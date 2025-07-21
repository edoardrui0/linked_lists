require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def append(value) # adds a new node containing value to the end of the list
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(value, nil)
  end

  def prepend(value) # adds a new node containing value to the start of the list
    @head = Node.new(value, @head)
  end

  def size # returns the total number of nodes in the list
    size = 0
    current_node = @head
    return if @head == nil
    while current_node != nil
      size +=1
      current_node = current_node.next_node
    end
    puts "The total number of nodes in our list is #{size}"
  end

  def head # returns the first node in the list
    puts "The first node in our list is #{@head.value}"
  end

  def tail # returns the last node in the list
    current_node = @head
    until current_node.next_node == nil
      current_node = current_node.next_node
    end
    puts "The last node in our list is #{current_node.value}"    
  end

  def at(index) # returns the node at the given index
    i = 0
    current_node = @head
    until i == index
      i += 1
      current_node = current_node.next_node
    end
    return puts "The index you input is outside of this list's scope" if current_node.nil?
    puts "The node found at index #{index} is #{current_node.value}"
  end

  def pop # removes the last element from the list
    #left off here 7/21
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node
  end

  def print_list
    current_node = @head
    p current_node.value
    while (current_node = current_node.next_node)
      p current_node.value
    end
  end
end

list = LinkedList.new(2)

list.append(3)
list.append(7)
list.prepend(8)
list.append(10)
list.pop
list.print_list
