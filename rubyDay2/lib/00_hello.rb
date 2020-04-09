def say_hello(first_name)
  puts "Entières salutations #{first_name} !"
end

def ask_first_name
  puts "Quel est votre prénom, s'il vous plait-il de me le donner svp ?"
  print " - Prénom: "
  res = gets.chomp
  return res
end

say_hello(ask_first_name)

