puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
n = gets.chomp.to_i()

k = 0
while k < n
    for j in k..n
      print " "
    end
    for j in 1..k*2-1
        print "#"
    end
    puts
    k = k +1
end


puts 
puts "It's a-me ... Maaaaario!"
