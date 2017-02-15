require 'minitest/autorun'
require_relative 'Coin_Changer.rb'

class Coin_Changer < Minitest::Test
	
	def test_8_returns_8_pennies
		cents = 8
		results = penny_function(cents)
		assert_equal(8, results)
	end

	def test_38_returns_7_nickels
		cents = 38
		results = nickel_function(cents)
		assert_equal(7, results)
	end

	def test_98_returns_9_dimes
		cents = 98
		results = dime_function(cents)
		assert_equal(9, results)
	end

	def test_99_returns_3_quarters
		cents = 99
		results = quarter_function(cents)
		assert_equal(3, results)
	end
end