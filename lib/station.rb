require_relative 'coach'
require_relative 'passenger'

class Station
	
	def initialize
		@passengers = []
		@trains = []
	end

	def passenger_count
		@passengers.count
	end

	def empty?
		passenger_count == 0
	end

	def touch_in(passenger)
		@passengers << passenger
		# station.in_station = true
	end

	def touch_out(passenger)
		@passengers.delete(passenger)
	end

	def arrive(passenger)
		@passengers << passenger
	end

	def release(passenger)
		@passengers.delete(passenger)
	end	

	def train_count
		@trains.count
	end

	def train_arrive(train)
		@trains << train
	end

	def train_leave(train)
		@trains.delete(train)
	end
end