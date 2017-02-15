def penny_function(cents)
	pennies = 0

	if cents - 1 > 0
		pennies = cents / 1
	end
end


def nickel_function(cents)
	nickels = 0

	if cents - 5 > 0
		nickels = cents / 5
	end
end


def dime_function(cents)
	dimes = 0

	if cents - 10 > 0
		dimes = cents / 10
	end
end


def quarter_function(cents)
	quarters = 0

	if cents - 25 > 0
		quarters = cents / 25
	end
end