def shift_char(c, n)
  lower = 'a'.upto('z').to_a
  upper = [*('A'..'Z')]
  if lower.include? c
    return lower[(c.ord - 'a'.ord + n) % 26]
  elsif upper.include? c
    return upper[(c.ord - 'A'.ord + n) % 26]
  else return c
  end
end

  

def caesar_cipher(phrase, n)
  return phrase.split('').map{|c| shift_char(c, n)}.join
end

puts caesar_cipher('ajbce767HJDJd! esj.', 3)
puts caesar_cipher('union atout', 20)
puts caesar_cipher('union atout', -20)
