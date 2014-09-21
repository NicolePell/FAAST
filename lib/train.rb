class Train

	def coaches
		@coaches ||= []
	end

	def coach_count
		coaches.count
	end

	def add_coach(coach)
		coaches << coach
	end

end