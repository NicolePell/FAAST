require_relative 'station'

class Passenger

	DEFAULT_CREDIT = 10

	def initialize

	end

	def travel_credit 
		@travel_credit = DEFAULT_CREDIT
	end

	def in_station?
		@in_station
	end

	def touch_in
		@in_station = true
		self
	end

	def touch_out
		@in_station = false
		self
	end
end