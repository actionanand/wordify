class NumberToWord
  def wordify(digits)
    #Verifying whether the given number is valid or not
    return "Please give 10 digit numbers" if digits.length != 10 || digits.split('').select{|a|(a.to_i == 0 || a.to_i == 1)}.length > 0
    #mapping the given digits to given letter series
    letters = {"2" => ["a", "b", "c"],"3" => ["d", "e", "f"],"4" => ["g", "h", "i"],"5" => ["j", "k", "l"],"6" => ["m", "n", "o"],"7" => ["p", "q", "r", "s"],"8" => ["t", "u", "v"],"9" => ["w", "x", "y", "z"]}
    #initializing a hash to hold available dictionary words for possible letters
    words = {}
    #initializing an array to hold all possible word combinations
    result = []

    dictionary = []
    file_path = "dictionary.txt"

    #storing the dictionary words in the array 
    File.foreach(file_path) do |dic|
      dictionary.push dic.chomp.to_s.downcase
    end

    #Storing all the possible letters for the given digits in an array
    possible_letters = digits.chars.map{|digit| letters[digit]}


    for i in (2..9)
      arr1 = possible_letters[0..i] #spliting the array into two parts (0 to i and i to end)
      arr2 = possible_letters[i + 1..9]
      next if arr1.length < 3 || arr2.length < 3
      first_combination = arr1.shift.product(*arr1).map(&:join)
      next if first_combination.nil?
      second_combination = arr2.shift.product(*arr2).map(&:join)
      next if second_combination.nil?
      #comparing the matches with dictionary words
      words[i] = [(first_combination & dictionary), (second_combination & dictionary)] 
    end

    words.each do |k, v|
      next if v.first.nil? || v.last.nil? #skip if either of the values of the inner arry of hash is nil
      v.first.product(v.last).each do |word|
        result << word
      end
    end

    #finding common possible word of length 10 with dic
    result << (possible_letters.shift.product(*possible_letters).map(&:join) & dictionary).join(", ")
    result

  end



end

n2w = NumberToWord.new()
n2w.wordify("6686787825")