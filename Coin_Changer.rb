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


def combined_coin_function(cents)

	coins_hash = {}

	if cents && (cents >= 25)
		first = quarter_function(cents)
		cents = cents - (first * 25)
		coins_hash[:quarter] = first
	end

	if cents && (cents >= 10)
		second = dime_function(cents)
		cents = cents - (second * 10)
		coins_hash[:dime] = second
	end

	if cents && (cents >= 5)
		third = nickel_function(cents)
		cents = cents - (third * 5)
		coins_hash[:nickel] = third
	end

	if cents && (cents >= 1)
		fourth = penny_function(cents)
		coins_hash[:penny] = fourth
	end
	coins_hash
end