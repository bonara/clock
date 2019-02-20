# clock.rb

def scrub(value, upper_bound)
  if value < 0 || value > upper_bound
    raise ArgumentError, "Invalid value #{value}"
  elsif value < 10 
    value = "0#{value}"
  end
  return value
end
# method called clock
# 3 args: hours, minutes, seconds

def clock(hours, minutes, seconds)
  hours = scrub(hours, 23)
  minutes = scrub(minutes, 59)
  seconds = scrub(seconds, 59)
  # if hours < 0
  #   raise ArgumentError, "Invalud hours #{hours}"
  # elsif hours < 10 
  #   hours = "0#{hours}"
  # end
  # if minutes < 0
  #   raise ArgumentError, "Invalud minutes #{minutes}"
  # elsif minutes < 10
  #   minutes = "0#{minutes}"
  # end
  # if seconds < 0
  #   raise ArgumentError, "Invalud minutes #{seconds}"
  # elsif seconds < 10
  #   seconds = "0#{seconds}"
  # end
  return "#{hours}:#{minutes}:#{seconds}"
  
end