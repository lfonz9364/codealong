class Phone

  def initialize(add)
    @number = add
  end

  def number
    if @number.length === 11 && @number[0] === '1'
        @number.split("").uniq.join("")
    elsif @number.length > 11
      @number.split(/\W/).join("")
    else
      @number = "0000000000"
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    new_number = "(#{@number[0..2]}) #{@number[3..5]}-#{@number[-4..-1]}"
  end
end
