# no_repeats(y1,y2) takes two years and prints out
# every year in between which doesn't have a repeat digit.
# it uses the helper funtion no_repeat?(num).

def no_repeat?(num)
  num = num.to_s              # convert to string (to use .length)
  l = 0                       # left side index start
  while l < num.length        
    r = l+1                   # right side index start
    while r < num.length
      if num[l] == num[r]     # compare digits at left and right index
        return false          # year has repeat
      end
      r = r+1                 # increment right side index
    end
    l = l+1                   # increment left side index
  end
  return true                 # year has no repeats
end

def no_repeats(y1,y2)
  for year in y1..y2          # loop thru inclusive array
    if no_repeat?(year)       # helper function checks for repeats
      puts years              # print years if none
    end
  end
end