require 'minitest/autorun'
require_relative 'Coin_Changer.rb'

class Coin_Changer < Minitest::Test

	def test_empty_hash
		cents = 0
		assert_equal({}, combined_coin_function(cents))
	end
	
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

class Final_Coin_Changer <Minitest::Test

	def test_68_returns_correctly
		cents = 68
		results = combined_coin_function(cents)
		assert_equal({:quarter => 2, :dime => 1, :nickel => 1, :penny => 3}, results)
	end

	def test_78_returns_correctly
		cents = 78
		results = combined_coin_function(cents)
		assert_equal({:quarter => 3, :penny => 3}, results)
	end

	def test_14_returns_correctly
		cents = 14
		results = combined_coin_function(cents)
		assert_equal({:dime => 1, :penny => 4}, results)
	end

	def test_46_returns_correctly
		cents = 48
		results = combined_coin_function(cents)
		assert_equal({:quarter => 1, :dime=> 2, :penny => 3}, results)
	end

	def test_13_returns_correctly
		cents = 13
		results = combined_coin_function(cents)
		assert_equal({:dime => 1, :penny => 3}, results)
	end

	def test_108_returns_correctly
		cents = 108
		results = combined_coin_function(cents)
		assert_equal({:quarter => 4, :nickel => 1, :penny => 3}, results)
	end

	def test_4_returns_correctly
		cents = 4
		results = combined_coin_function(cents)
		assert_equal({:penny => 4}, results)
	end

	def test_124_returns_correctly
		cents = 124
		results = combined_coin_function(cents)
		assert_equal({:quarter => 4, :dime => 2, :penny => 4}, results)
	end

	def test_200_returns_correctly
		cents = 200
		results = combined_coin_function(cents)
		assert_equal({:quarter => 8}, results)
	end

	def test_187_returns_correctly
		cents = 187
		results = combined_coin_function(cents)
		assert_equal({:quarter => 7, :dime => 1, :penny => 2}, results)
	end

	def test_24_returns_correctly
		cents = 24
		results = combined_coin_function(cents)
		assert_equal({:dime => 2, :penny => 4}, results)
	end

	def test_2_returns_correctly
		cents = 2
		results = combined_coin_function(cents)
		assert_equal({:penny => 2}, results)
	end

	def test_102_returns_correctly
		cents = 102
		results = combined_coin_function(cents)
		assert_equal({:quarter => 4, :penny => 2}, results)
	end
end