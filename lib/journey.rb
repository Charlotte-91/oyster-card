require_relative 'station'
require_relative 'oystercard'
class Journey
  attr_accessor :entry_station, :exit_station
  MINIMUM_FARE = 1
  PENALTY_FARE = 6
  def initialize
    @entry_station = nil
    @exit_station = nil
  end

  def start_journey(station)
    @entry_station = station
  end

  def end_journey(station)
    @exit_station = station
    self
  end

  def fare
    if @entry_station && @exit_station
      MINIMUM_FARE
    else
      PENALTY_FARE
    end
  end

  def complete?
    if @exit_station && @entry_station
      true
    elsif @exit_station && @entry_station = nil
      true
    end
  end
end
