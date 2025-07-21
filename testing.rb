require_relative 'main'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.prepend('turtle')
p list.find('snake')

# p list.list