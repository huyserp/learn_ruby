class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    report = Time.at(@seconds).utc.strftime("%H:%M:%S")
    report
  end
  
end
