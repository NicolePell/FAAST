class Passenger

	def initialize
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

end