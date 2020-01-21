require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')
require_relative('../bus')
require_relative('../person')

class TestBusStop < Minitest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus_stop = BusStop.new("Leith")
    @passenger1 = Person.new("Paul", 34)
    @passenger2 = Person.new("Calum", 22)
  end

  def test_queue_count
    assert_equal(0, @bus_stop.queue_count())
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@passenger1)
    assert_equal(1, @bus_stop.queue_count())
  end

  def test_pick_up_from_stop
    @bus_stop.pick_up_from_stop(@passenger1, @bus_stop, @bus1)
    assert_equal(1, @bus1.passenger_count())
  end

  # def test_pick_up_from_stop
  #   @bus_stop.add_person_to_queue(@passenger1)
  #   @bus_stop.add_person_to_queue(@passenger2)
  #   @bus1.bus_pick_up(@passenger1)
  #   @bus1.bus_pick_up(@passenger2)
  #   @bus_stop.clear_queue(@bus_stop)
  #   assert_equal(2, @bus1.passenger_count())
  # end

end
