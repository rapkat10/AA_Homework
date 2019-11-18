# DIY ADTs
# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:

class Stack
    attr_reader :stack

    def initialize
        # create ivar to store stack here!
        @stack = []
    end

    def push(el)
        # adds an element to the stack
        @stack.push(el)
    end

    def pop
        # removes one element from the stack
        @stack.pop
    end

    def peek
        # returns, but doesn't remove, the top element in the stack
        @stack[-1]
    end
end

puts "Stack class 'LIFO'"
stack = Stack.new
stack.push('LA Galaxy')
stack.push('RSL')
stack.push('Houston Dynamo')
stack.push('NYC')
p stack.stack
puts "removing front of Stack"
p stack.pop
puts "\n"
p stack.stack
puts "removing front of Stack"
p stack.pop
puts "\n"
p stack.stack
puts "removing front of Stack"
p stack.pop
puts "\n"
p stack.stack
puts "removing front of Stack"
p stack.pop
puts "\n"
puts "\n\n"
puts "New Stack"
stack.push('Zlatan')
stack.push('Neymar')
stack.push('Ronaldo')
stack.push('Messi')
p stack.stack
puts "First in Stack"
p stack.peek
puts "\n\n\n"

# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: 
# enqueue(el), dequeue, and peek.

class Queue

    attr_reader :Queue
    def initialize
        @Queue = []
    end

    def enqueue(el)
        @Queue.push(el)
    end

    def dequeue
        @Queue.shift
    end

    def peek
        @Queue[0]
    end

end

puts "Queue class 'FIFO'"
queue = Queue.new
queue.enqueue('LA Galaxy')
queue.enqueue('RSL')
queue.enqueue('Houston Dynamo')
queue.enqueue('NYC')
p queue.Queue
puts "removing front of line"
p queue.dequeue
puts "\n"
p queue.Queue
puts "removing front of line"
p queue.dequeue
puts "\n"
p queue.Queue
puts "removing front of line"
p queue.dequeue
puts "\n"
p queue.Queue
puts "removing front of line"
p queue.dequeue
puts "\n"
puts "\n\n"
puts "New Line"
queue.enqueue('Zlatan')
queue.enqueue('Neymar')
queue.enqueue('Ronaldo')
queue.enqueue('Messi')
p queue.Queue
puts "First in Line"
p queue.peek


# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. 
# Let's write a Map class (following a similar pattern to Stack and Queue) 
# that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, 
# where the keys are always unique. When implemented with arrays, 
# a map might look something like 
# this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance 
# methods: set(key, value), get(key), delete(key), show. 
# Note that the set method can be used to either create 
# a new key-value pair or update the value for a pre-existing key. 
# It's up to you to check whether a key currently exists!

class Map

    attr_reader :map
    def initialize
        @map = []
    end

    def get(key)
        @map.each { |k_v| return k_v.last if k_v.first == key }
    end

    def set(k, v)
        updated = false
        new_pair = [k, v]
        @map.each do |k_v|
            if k_v.first == k 
                k_v[-1] = v 
                updated = true
                break
            end
        end
        updated ? (puts "\nvalue updated for #{k}") : (@map.push(new_pair))
    end

    def delete(key)
        @map.each { |k_v| @map.delete(k_v) if k_v.first == key }     
    end

end

puts "\n\nMap class\n"
map = Map.new
map.set('LA Galaxy', 10)
map.set('RSL', 11)
map.set('Houston Dynamo', 7)
map.set('NYC', 13)
p map.map
puts "removing a pair"
map.delete('RSL')
puts "\n"
p map.map
puts "removing a pair"
map.delete('NYC')
puts "\n"
p map.map
puts "\n"
puts "\n\n"
puts "New Map"
map = Map.new
map.set('Zlatan', 34)
map.set('Neymar', 28)
map.set('Ronaldo', 34)
map.set('Messi', 32)
p map.map
map.set('Messi', 40)
p map.map