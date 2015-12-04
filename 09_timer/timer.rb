class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end



	def time_string
		@hour_string = ''
		@min_string = ''
		@sec_string = ''
		@hours = @seconds/60/60
		@minutes = (@seconds/60) - (@hours*60)
		@seconds = @seconds - (@minutes * 60) - (@hours*60*60)
		if @hours < 10
			@hour_string = '0' + @hours.to_s
		else
			@hour_string = @hours.to_s
		end

		if @minutes < 10
			@min_string = '0' + @minutes.to_s
		else
			@min_string = @minutes.to_s
		end

		if @seconds < 10
			@sec_string = '0' + @seconds.to_s
		else
			@sec_string = @seconds.to_s
		end
		time = @hour_string + ':' + @min_string + ':' + @sec_string
	end
end