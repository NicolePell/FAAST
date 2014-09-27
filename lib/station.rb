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

	def enter(passenger)
		@passengers << passenger
		passenger.touch_in(self)
		# passenger.travel_credit -=2
	end

	def exit(passenger)
		@passengers.delete(passenger)
		passenger.touch_out(self)
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