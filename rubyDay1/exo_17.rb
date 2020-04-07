puts "Ténékan ?"
print "> an: "
an = gets.chomp.to_i()
for i in an..2020
  if (i == 2020-i+an)
    puts "Ya #{2020-i} ans tavé la moité de ton age de mainan"
  else
    puts "Ya #{2020-i} ans tavé #{i-an.to_i()} ans"
  end
end
