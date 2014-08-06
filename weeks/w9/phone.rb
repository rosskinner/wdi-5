class Phone

  def initialize(num)
    @num = num
  end

  def number
    @num = @num.delete("^0-9")
    if @num.split("").length == 11
      @num = @num.split("")
      if @num[0] == '1'
        @num.shift
        @num = @num.join
      else
          @num = '0000000000'
      end
    elsif @num.split("").length == 9
      @num = '0000000000'
    end
    @num
  end

  def area_code
    @num = @num.split("")[0..2].join
  end

  def to_s
    @num = @num.split("")
    @num.insert(0,"(")
    @num.insert(4,")")
    @num.insert(5," ")
    @num.insert(9,"-")
    @num.join
  end

end