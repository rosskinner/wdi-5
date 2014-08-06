require 'minitest/autorun'
require 'minitest/pride'

# SumOfMultiple.calc()

class SumOfMultiple
# attr_reader :multiple

  def initialize(lowest = 1, highest = 10)
    @lowest = lowest
    @highest = highest
  end

  def calc(*multiples)

    sum = 0

    (@lowest..@highest).each do |num|
      multiples.each do |multiple|
        sum += num if num % multiple == 0
      end
    end
    sum
  end
end

class TestSumOfMultiple < MiniTest::Test

  def test_multiples_of_three
    assert_equal 18, SumOfMultiple.new(1,10).calc(3)
  end

  def test_multiples_of_five
    assert_equal 15, SumOfMultiple.new.calc(5)
  end

  def test_multiples_of_three_and_five
    assert_equal(33, SumOfMultiple.new.calc(3,5))
  end
end