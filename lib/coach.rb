require_relative 'station'

class Coach

DEFAULT_CAPACITY = 40

	def initialize
		@passengers = []
	end

	def passenger_count
		@passengers.count
	end

	def capacity
		@capacity = DEFAULT_CAPACITY
	end

	def board(passenger, station)
		raise "Coach is full" if full?
		@passengers << passenger
		station.release(passenger)
	end

	def alight(passenger, station)
		@passengers.delete(passenger)
		station.arrive(passenger)
	end

	def full?
		passenger_count == capacity
	end

end 