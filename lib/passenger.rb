require_relative 'station'

class Passenger

	DEFAULT_CREDIT = 10

	def initialize
		@travel_credit
		@station
	end

	def travel_credit 
		@travel_credit = DEFAULT_CREDIT
	end

	def in_station?
		@in_station
	end

	def touch_in(station)
		@in_station = true
		@station = station
		self
	end

	# def entry_charge
	# 	travel_credit
	# end

	def touch_out(station)
		@in_station = false
		@station = station
		self
	end
end