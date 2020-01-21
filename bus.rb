class Bus

  attr_reader :noise

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def passenger_count()
    return @passengers.count()
  end

  def bus_pick_up(new_passenger)
    return @passengers.push(new_passenger)
  end

  def bus_drop_off(passenger_to_remove)
    return @passengers.delete(passenger_to_remove)
  end

  def bus_empty()
    return @passengers.clear()
  end





end
