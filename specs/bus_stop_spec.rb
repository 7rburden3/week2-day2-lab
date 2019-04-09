require("minitest/autorun")
require("minitest/rg")

require_relative("../person.rb")
require_relative("../bus.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
    @passenger1 = Person.new("Ralph", "18")
    @passenger2 = Person.new("James", "33")
    @bus_stop = BusStop.new("Princes Street")
  end

  def test_can_add_person_to_queue
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    assert_equal(2, @bus_stop.count_queue(@queue))
  end

  def test_can_empty_queue
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    @bus_stop.empty_queue
    assert_equal(0, @bus_stop.count_queue(@queue))
  end







end
