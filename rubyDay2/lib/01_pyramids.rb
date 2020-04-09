def half_pyramid
  puts "Combien d'étages pour ta pyramide?"
  print " Étages: "
  n = gets.chomp.to_i()
  n.times do |etage|
    puts ("#"*(etage+1)).to_s.rjust(n, " ")
  end
end

def full_pyramid
  puts "Combien d'étages pour ta pyramide?"
  print " Étages: "
  n = gets.chomp.to_i()
  n.times do |etage|
    puts ("#"*(2*etage+1)).to_s.rjust(n+etage, " ")
  end
end

def wtf_pyramid
  puts "Combien d'étages pour ta pyramide?"
  print " Étages: "
  n = gets.chomp.to_i()
  if n.even?
    puts "Impair ou passe"
    return
  end
  #First half
  n = n / 2 + 1

  n.times do |etage|
    puts ("#"*(2*etage+1)).to_s.rjust(n+etage, " ")
  end

  #Second half

  (n-1).times do |i|
    etage = (n - 1) - (i + 1) 
    puts ("#"*(2*etage + 1)).to_s.rjust(n + etage, " ")
  end
end


wtf_pyramid

