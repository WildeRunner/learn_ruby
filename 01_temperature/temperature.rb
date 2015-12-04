def ftoc(temperature)
	temperature = (temperature - 32) * 5.0/9.0
end

def ctof(temperature)
	if temperature == 0
		32
	else
		temperature = (temperature/(5.0/9.0)) + 32
	end
end