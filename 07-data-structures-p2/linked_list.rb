require 'pry'
# Implement a Linked List with:
# 1. a method that prints the value of every node and
# 2. a method that inserts a node and then prints the list

# we're doing OOP should we create a node Class and linked list class

# - Write the question down and confirm your assumptions  
#  - Write out/explain steps for the solution before coding 
#  - Code out solution 
#  - Run test case examples 
#  - Give Big - O

class Node 
#value and next
attr_accessor :value, :next

#can be shared with other methods
def initialize(value)
    @value = value
    @next = nil
end


end

# head 
# 1 -> 2 -> 3 -> nil

class LinkedList
#head length 

attr_accessor :head, :length

def initialize
    @head = nil
    @length = 0
end 

def unshift(value)
    new_node = Node.new(value)
    temp = self.head
    self.head = new_node
    self.head.next = temp
    self.length +=1
    self
end

end

ll = LinkedList.new

binding.pry