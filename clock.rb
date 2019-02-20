# clock.rb

# method called clock
# 3 args: hours, minutes, seconds

def clock(hours, minutes, seconds)
  if hours < 10 
    hours = "0#{hours}"
  end
  if minutes < 10
    minutes = "0#{minutes}"
  end
  if seconds < 10
    seconds = "0#{seconds}"
  end
  
  return "#{hours}:#{minutes}:#{seconds}"
  
end