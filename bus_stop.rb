class BusStop

  attr_accessor :queue

  def initialize(stop_name)
    @stop_name = stop_name
    @queue = []
  end

  def add_person_to_queue(passenger)
    @queue.push(passenger)
    p @queue
  end

  def count_queue(queue)
    @queue.count
  end

  def empty_queue
    for person in @queue
      @queue.clear
    end
  end



end
