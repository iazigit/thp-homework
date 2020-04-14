def day_trader(prices)
  if prices.length == 0
    return 0
  end
  mini = prices[0]
  indmin = 0
  res = 0
  sol = [0,0]
  prices.each_with_index do |p,i|
    if p-mini > res
      res = p-mini
      sol = [indmin, i]
    elsif p < mini
      mini = p
      indmin = i
    end
  end
  return sol
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
