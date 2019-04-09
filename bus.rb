class Bus

  attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Vroom vroom!"
  end

  def count_passengers
    return @passengers.count
  end

  def pick_up(passenger1)
    @passengers.push(passenger1)
  end

  def drop_off(passenger1)
    @passengers.delete(passenger1)
  end

  def empty_bus
    for passenger in @passengers
      @passengers.clear
    end
  end


end
