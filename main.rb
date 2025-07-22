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
    current_node = @head
    if current_node.next_node.nil?
      @head = @head.next_node
    else 
      current_node = current_node.next_node until current_node.next_node.next_node.nil?
      current_node.next_node = nil
    end
  end

  def contains?(value) # returns true if the passed in value is in the list and otherwise returns false.
    current_node = @head
    until current_node.nil?
      return true if current_node.value == value
      current_node = current_node.next_node
    end

    false
  end

  def find(value) # returns the index of the node containing value, or nil if not found.
    index = 0
    current_node = @head
    until current_node.nil?
      return index if current_node.value == value
      current_node = current_node.next_node
      index += 1
    end
    nil
  end

  def to_s # represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    current_node = @head
    list = ''
    while current_node
      list << "( #{current_node.value} ) -> "
      current_node = current_node.next_node
    end
    puts list << " nil"
  end

  # def print_list
  #   current_node = @head
  #   while current_node
  #     p current_node.value
  #     current_node = current_node.next_node
  #   end
  # end
end
