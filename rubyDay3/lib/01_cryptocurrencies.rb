#!/usr/local/bin/ruby -w


## Crypto


$data_file = "../data/crypto.txt"

def load_data(filename)
  file = File.open(filename)
  data = file.read
  names, price = data.split("\n")
  names = names.chomp[2..-3].split("\", \"")
  price = price.chomp[2..-3].split("\", \"").map{|x| x[1..-1].to_f}
  return h = Hash[names.zip price]
end



def main
  crypto = load_data($data_file)
  answers = []
  answers << crypto.max_by{ |k, v| v}
  answers << crypto.min_by{ |k, v| v}
  answers << crypto.select{|k,v| k.to_s.downcase.include? "coin" }.length
  answers << crypto.select{|k,v| v > 6000.0 }
  answers << crypto.select{|k,v| v < 6000.0 }.max_by{|k,v| v}
  answers.each_with_index do |e, i|
    puts "Q#{i+1} : " + e.to_s
  end
end

main
