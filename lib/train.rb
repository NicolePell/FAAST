class Train

	DEFAULT_CAPACITY = 6

	# def initialize

	# end

	def coach_length
		@capacity ||= DEFAULT_CAPACITY
	end

	def coaches
		@coaches ||= []
	end

	def coach_count
		coaches.count
	end

	def add_coach(coach)
		coaches << coach
	end

	def full?
		coach_count == coach_length
	end

end