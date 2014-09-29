require_relative 'station'

class Passenger

	def initialize(travel_credit=10)
		@travel_credit = travel_credit
		@station = false
	end

	def travel_credit 
		@travel_credit
	end

	def pay_travel_charge
		@travel_credit = travel_credit - 2
	end

	def in_station?
		@in_station
	end

	def touch_in(station)
		@in_station = true
		@station = station
		pay_travel_charge
		self
	end

	def touch_out(station)
		@in_station = false
		@station = station
		self
	end
end