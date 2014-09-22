class Passenger

	# DEFAULT_CREDIT = 10
	# attr_accessor :travel_credit

	# def initialize(options = {})
	# 	self.travel_credit = options.fetch(:travel_credit, travel_credit)
	# 	# touch_out()
	# end

	# def travel_credit 
	# 	@travel_credit ||= DEFAULT_CREDIT
	# end

	# def travel_credit=(value)
	# 	@travel_credit = value
	# end

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

	# def entry_charge
	# 	@travel_credit -= 2
	# end

end