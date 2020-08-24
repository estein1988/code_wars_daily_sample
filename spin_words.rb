#original

def spin_words(string)
  array = string.split(" ")
  new_array = array.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end
  new_array.join(" ")
end

#p spin_words("Hey fellow warriors")

#refactored

def spin_words(string)
  string.split.map do |word|
    if word.size >= 5
      word.reverse
    else
      word
    end
  end.join(" ")
end

p spin_words("Hey fellow warriors")