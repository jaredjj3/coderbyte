# Implement a queue using two stacks

class Queue
  attr_accessor :values, :holding

  def initialize(values)
    self.values = values
    self.holding = []
  end

  def dequeue
    values.pop
  end

  def enqueue(obj)
    holding << values.pop until values.empty?
    holding << obj
    values << holding.pop until holding.empty?
    obj
  end
end


def test_dequeue_with_filled_array
  queue = Queue.new([4, 3, 2, 1])
  dequeued = queue.dequeue
  puts [dequeued == 1, queue.values == [4, 3, 2]].all?
end

def test_dequeue_with_empty_array
  queue = Queue.new([])
  dequeued = queue.dequeue
  puts [dequeued.nil?, queue.values == []].all?
end

def test_enqueue_with_filled_array
  queue = Queue.new([1, 2, 3, 4])
  enqueued = queue.enqueue(0)
  puts [enqueued == 0, queue.values == [0, 1, 2, 3, 4]].all?
end


def test_enqueue_with_empty_array
  queue = Queue.new([])
  enqueued = queue.enqueue(0)
  puts [enqueued == 0, queue.values == [0]].all?
end

test_dequeue_with_filled_array
test_dequeue_with_empty_array
test_enqueue_with_filled_array
test_enqueue_with_empty_array
