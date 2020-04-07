puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
n = gets.chomp.to_i()

for k in 1..n
    for j in 1..k
        print "#"
    end
    puts
end
