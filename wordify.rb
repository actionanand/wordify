class NumberToWord
  def wordify(digits)
    #Verifying whether the given number is valid or not
    return "Please give 10 digit numbers" if digits.length != 10 || digits.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    #mapping the given digits to given letter series
    letters = {"2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"],"5" => ["j", "k", "l"],"6" => ["m", "n", "o"],"7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"],"9" => ["w", "x", "y", "z"]}
    #initializing a hash to hold available dictionary words for possible letters
    words = {}
    #initializing an array to hold all possible word combinations
    possible_words = []

    dictionary = []
    file_path = "dictionary.txt"

    #storing the dictionary words in the array 
    File.foreach(file_path) do |dic|
      dictionary.push dic.chomp.to_s.downcase
    end

    #Storing all the possible letters for the given digits in an array
    p possible_letters = digits.chars.map{|digit| letters[digit]}
  end

end

n2w = NumberToWord.new()
n2w.wordify("6686787825")