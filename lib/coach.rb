class Coach

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count
	end

	def board(passenger)
		passengers << passenger
	end

	def alight(passenger)
		passengers.pop
	end

end 