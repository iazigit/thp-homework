##Signup 

def signup
  puts "Choisissez un mdp: "
  print " Mdp: "
  mdp = gets.chomp
  return mdp
end

## login

def login(password)
  input = ""
  while input != password
    puts "Tape le mdp secret!"
    print " Mdp: "
    input = gets.chomp
  end
  puts "You're logged in, welcome haxx0r!"
end

def welcome_screen
  greet_txt = "SECRET NSA BACKDOOR PASSWD"
  size = greet_txt.length + 4*2
  puts "#"*size
  puts "#"*2 + " "*(size-2*2) + "#"*2
  puts "#"*2 + "  SECRET NSA BACKDOOR PASSWD  " + "#"*2
  puts "#"*2 + " "*(size-2*2) + "#"*2
  puts "#"*size
end

def perform
  mdp = signup
  welcome_screen
  login(mdp)
end

perform
   
  
