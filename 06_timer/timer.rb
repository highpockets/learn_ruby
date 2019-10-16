class Timer
  
  def initialize(seconds = 0)
    @seconds = seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def time_string
    seconds = @seconds
    @seconds = time_padding(seconds/3600) + ':' + time_padding(seconds%3600/60) + ':' + time_padding(seconds%60)
  end

  def time_padding(num)

    if num < 10
      return '0' + num.to_s
    else
      return num.to_s
    end
  end
end
