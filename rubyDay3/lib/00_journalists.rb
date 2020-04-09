#!/usr/local/bin/ruby -w

## COMMENT RÉPONDRE AUX QUESTIONS DE JOUNRALISTES
## SUR LES JOURNALISTES

$data_file = "../data/journalists.txt"

def load_data(filename)
  file = File.open(filename)
  data = file.read.chomp
  data = data[2..-3].split("\",\"")
  return data
end

def greet_screen
  text_top = "  BIENVENUE À"
  text_bot = "  QUESTIONS POUR UN JOURNALISTE"
  len_pad  = 2
  size = [text_bot, text_top].map(&:length).max + len_pad
  puts "╔" +  "═"*size + "╗"  
  puts "║" +  " "*size + "║"
  puts "║" +  text_top.ljust(size, " ") + "║"
  puts "║" +  " "*size + "║"
  puts "║" +  text_bot.ljust(size, " ") + "║"
  puts "║" +  " "*size + "║"
  puts "╚" +  "═"*size + "╝"
  puts
end

def display_questions
  questions = ["Aucune, j'en ai marre, j'me casse!", 
    "Combien y a-t-il de journalistes dans ce array ?", 
    "Combien d'handle contiennent un numéro ?", 
    "Combien d'handle contiennent les 4 lettres du prénom \"Aude\" à la suite (sans prendre en compte les majuscules) ?", 
    "Combien commencent par une majuscule (première lettre juste après le @) ?", 
    "Combien contiennent au moins une majuscule ?", 
    "Combien y a-t-il de underscore _ dans tous les pseudos confondus ?", 
    "Trie la liste de handle par ordre alphabétique.", 
    "Quels sont les 50 handles les plus courts de ce array ?", 
    "Quelle est la position dans l'array de la personne @epenser ?"]
  questions.each_with_index do |q, i|
    num = (i+1).to_s.rjust(2, "0")
    puts "  - Q#{i} :  #{q}"
  end
end

def ask_question()
  puts "Quelle question souhaitez-vous poser? (0-N)"
  print" > Question Q"
  return gets.chomp.to_i
end

def answer_question(n, data)
  puts "\n"
  case n
  when 0
    return 
  when 1
    puts "Il y a #{data.length} journalistes"
  when 2
    res = (data.map { |e| [1, e.count("0-9")].min }).inject(:+)
    puts "#{res} journalistes ont un chiffre dans leur handle"
  when 3
    res = 0
    data.each do |e|
      if e.downcase.include? "aude"
          res += 1
      end
    end
    puts "#{res} journalistes ont Aude dans leur handle"
  when 4 #Commence par une maj
    res = 0
    data.each do |e|
      if e[1] =~ /[[:upper:]]/
        res += 1
      end
    end
    puts "#{res} journalistes ont un handle qui commence par une Majuscule"
  when 5 #Au moins une maj
    res = data.map { |e| /[[:upper:]]/.match(e) }  
    res = (res.map { |e| 1 if e }).compact.inject(:+)
    puts "#{res} journalistes ont un handle qui contient une Majuscule"
  when 6 #Nb total d'underscores
    res = (data.map {|e| e.count("_") }).inject(:+)  
    puts "Nombre total d'underscore : #{res}"
  when 7 #Trier liste
    res = data.sort
    puts "C'est bon, j'ai trié la liste"
  when 8 #50 Handles les + court
    sorted = data.sort_by(&:length)
    len_max = sorted[0..49].map(&:length).max
    puts "Les 50 journalistes qui ont la plus courte sont: "
    50.times do |i|
      print sorted[i].rjust(len_max+1, " ")
      if (i+1) % 5 == 0
        puts
      end
    end
  when 9 #position de epenser
    i = data.index("@epenser")
    puts "@epenser se trouve en position data.index(\"@epenser\") = #{i}"
  end
  puts "\n"
end

def main
  data = load_data($data_file)
  greet_screen 
  num = -1
  while num != 0 do
    display_questions
    num = ask_question
    answer_question(num, data)
    sleep(2)
  end
  puts "Ah enfin, moi aussi j'étais saoulé à répondre à tes questions de journaliste!"
end


main
