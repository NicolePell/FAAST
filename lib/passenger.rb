class Passenger

	DEFAULT_CREDIT = 10
	attr_accessor :travel_credit

	def initialize(options = {})
		@travel_credit = options.fetch(:travel_credit, DEFAULT_CREDIT)
		touch_out()
	end

	def in_station?
		@in_station
	end

	def touch_in
		@in_station = true
		# self
	end

	def touch_out
		@in_station = false
	end

	def entry_charge
		@travel_credit -= 2
	end

end