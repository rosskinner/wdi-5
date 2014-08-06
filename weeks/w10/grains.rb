# Grains

# There once was a wise servant who saved the life of a prince. The king promised to pay whatever the servant could dream up. Knowing that the king loved chess, the servant told the king he would like to have grains of wheat. One grain on the first square of a chess board. Two grains on the next. Four on the third, and so on.

# There are 64 squares on a chessboard.

# Write a program that shows
# - how many grains were on each square, and
# - the total number of grains


require 'minitest/autorun'
require 'minitest/pride'

class Grains

  def square(num)
    num = 2 ** (num - 1)
  end

  def total
    num = 0
    65.times do |n|
      num = square(n)
      num += num
    end
    num - 1
  end

end

class GrainsTest < MiniTest::Unit::TestCase

  def test_square_1
    assert_equal 1, Grains.new.square(1)
  end

  def test_square_2

    assert_equal 2, Grains.new.square(2)
  end

  def test_square_3

    assert_equal 4, Grains.new.square(3)
  end

  def test_square_4

    assert_equal 8, Grains.new.square(4)
  end

  def test_square_16

    assert_equal 32768, Grains.new.square(16)
  end

  def test_square_32

    assert_equal 2147483648, Grains.new.square(32)
  end

  def test_square_64

    assert_equal 9223372036854775808, Grains.new.square(64)
  end

  def test_total_grains
    assert_equal 18446744073709551615, Grains.new.total
  end

end