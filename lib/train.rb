class Train

	attr_accessor :coach

	# DEFAULT_CAPACITY = 6

	# def initialize

	# end

	# def train_length
	# 	@capacity ||= DEFAULT_CAPACITY
	# end

	def coaches
		@coaches ||= []
	end

	def coach_count
		coaches.count
	end

	def add_coach(coach)
		coaches << coach
	end

	def remove_coach(coach)
		coaches.pop
	end

	# def full?
	# 	coach_count == train_length
	# end

end