require_relative 'station'
require_relative 'passenger'

class Train

	attr_accessor :coach

	def initialize(capacity=6)
		@capacity = capacity
	end

	def capacity
		@capacity
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

	def remove_coach(coach)
		coaches.pop
	end

	# def transfer(tooting, moorgate)
	# 	tooting.train_leave(self)
	# 	moorgate.train_arrive(self)
	# end


	# def full?
	# 	coach_count == train_length
	# end

end