class Year
  attr_accessor :year

  def initialize (year)
    @year = year
  end

  def leap?
    if @year%4 == 0 && @year%100 != 0 && @year % 400 != 0

      "#{year} is a leap year"
    else

        "#{year} is not a leap year"
    end
  end
end