$shake_file = "../data/t8.shakespeare.txt"
$swear_file = "../data/swearWords.txt"

$dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]


def load_data(filename)
  file = File.open(filename, 'r')
  data = file.read.chomp.gsub(/[[:punct:]]/, ' ')  
  data = data.split
  return data
end

def count_words_from(data, dict)
  counts = dict.map{|e| [e, data.count(e)]}
  counts = Hash[*counts.flatten(1)].select{|e,v| v > 0}
  return counts
end

shake_data = load_data($shake_file)
bad_dict = load_data($swear_file)
puts bad_dict
puts 'Dictionary counts'
puts count_words_from(shake_data, $dictionnary)
puts count_words_from(shake_data, bad_dict)
