require_relative 'main'

list = LinkedList.new('dolphin')

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.pop
list.append('snake')
list.append('turtle')
list.prepend('alpaca')
list.to_s