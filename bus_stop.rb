class BusStop

attr_reader :name

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count()
    return @queue.count()
  end

  def add_person_to_queue(passenger_to_add)
    return @queue.push(passenger_to_add)
  end

  def clear_queue()
    return @queue.clear()
  end

  def pick_up_from_stop(passenger, bus_stop, bus)
    add_person_to_queue(passenger)
    bus.bus_pick_up(passenger)
    clear_queue()
  end



end
