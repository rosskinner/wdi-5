require 'pry'
require 'pry-debugger'

$n= [["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"],["","tens","twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety", "one-hundred"]]

class Say
  attr_accessor :number
  attr_accessor :in_english

  def initialize(number)
    @number = number
  end

  def in_english
    @number = @number.to_s.split('')
      tens= @number[0].to_i
      ones = @number[1].to_i

      if @number[tens] == 1
          @number[tens]= $n[0][tens]
          p @number[tens] << @number[tens]+"teen"

      elsif @number.length == 2

        @number[tens]= $n[1][tens]
        @number[ones]= $n[0][ones]
        p @number[tens]<<'-'+@number[ones]




      else
        @number[tens]= $n[0][tens]
        p @number[tens]
      end


  end
end

new_number = Say.new(24).in_english
p new_number

new_number2 = Say.new(54).in_english

new_number3 = Say.new(5).in_english

new_number4 = Say.new(15).in_english

