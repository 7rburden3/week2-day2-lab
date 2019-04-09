require("minitest/autorun")
require("minitest/rg")

require_relative("../person.rb")
require_relative("../bus.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("James", "33")
    @passenger2 = Person.new("Ralph", "18")

    @bus = Bus.new("22", "Ocean Terminal")
  end

  def test_has_route_number
    assert_equal("22", @bus.route_number)
  end

  def test_has_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_can_drive
    assert_equal("Vroom vroom!", @bus.drive)
  end

  def test_passengers_on_board
    assert_equal(0, @bus.count_passengers)
  end

  def test_passengers_on_board__1
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_can_remove_passenger
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger1)
    assert_equal(1, @bus.count_passengers)
  end

  def test_can_empty_bus
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty_bus
    assert_equal(0, @bus.count_passengers)
  end

  def test_pick_up_from_stop
    @bus_stop = BusStop.new("Princes Street")
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus_stop.empty_queue

    assert_equal(2, @bus.count_passengers)


  end


end
