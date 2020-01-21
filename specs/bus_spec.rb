require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class TestBus < Minitest::Test

  def setup
    @bus1 = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Paul", 34)
    @passenger2 = Person.new("Calum", 22)
  end

  def test_drive
    assert_equal("Brum brum", @bus1.drive())
  end

  def test_passenger_count
    assert_equal(0, @bus1.passenger_count())
  end

  def test_bus_pick_up
    @bus1.bus_pick_up(@passenger1)
    assert_equal(1, @bus1.passenger_count())
  end

  def test_bus_drop_off
    @bus1.bus_pick_up(@passenger1)
    @bus1.bus_pick_up(@passenger2)
    @bus1.bus_drop_off(@passenger2)
    assert_equal(1, @bus1.passenger_count())
  end

  def test_bus_empty
    @bus1.bus_pick_up(@passenger1)
    @bus1.bus_pick_up(@passenger2)
    @bus1.bus_empty()
    assert_equal(0, @bus1.passenger_count())
  end








end
