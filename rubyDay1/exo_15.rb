puts "Ténékan ?"
print "> an: "
an = gets.chomp
for i in an.to_i()..2020
  puts "en #{i} tavé #{i-an.to_i()} ans"
end
