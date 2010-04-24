SET = [["e", "é", "è"], ["a","à","â"],["o","ô"],["u","ù"]]

def derive string
  return "" if string.empty?
  s = string.chars.to_a
  set(s.shift).inject([]) do |res,car|
    res.push(car) if derive(s.to_s).each {|s| res.push(car + s)}.empty?
    res
  end
end

def set car
  (SET+[car]).select {|set| set.include? car}.first
end