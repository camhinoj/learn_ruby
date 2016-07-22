class Timer
  #write your code here
  def initialize(seconds = 0, minutes = 0, hours = 0)
    @seconds = seconds
    @minutes = minutes
    @hours = hours
  end

  def seconds
  	@seconds
  end

  def seconds=(seconds)
    if seconds == 0
      zero_timer
    else
      if seconds > 60
        while seconds > 60 do
          @minutes += 1
          seconds -= 60
        end
        while @minutes > 60 do
          @hours += 1
          @minutes -= 60
        end
        @seconds = seconds
      else
        @seconds = seconds
      end
    end
  end


  def time_string
    return padded(@hours) + ":" + padded(@minutes) + ":" + padded(@seconds)
  end

  def padded(unit)
    if unit > 10
      return unit.to_s
    else
      return "0" + unit.to_s
    end
  end

  def zero_timer
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

end