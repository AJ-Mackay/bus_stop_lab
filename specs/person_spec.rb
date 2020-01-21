require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')
require_relative('../bus')


class TestPerson < Minitest::Test

  def setup
    @passenger1 = Passenger.new("Paul", 34)
    @passenger2 = Passenger.new("Calum", 22)
  end

end
