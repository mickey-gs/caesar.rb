#caesar.rb

class Alphabet
  def initialize
    @alphabet = {}
    @numberbet = {}
    i = 1
    for letter in ("a".."z")
      @alphabet[letter] = i
      @numberbet[i] = letter
      i += 1
    end
    return @alphabet
  end

  def letters
    return @alphabet
  end

  def numbers
    return @numberbet
  end

  def display
    puts @alphabet
  end
end

def caesar(string, key)
  original = string.dup
  string = string.downcase.split("")
  alphabet = Alphabet.new.letters
  numberbet = Alphabet.new.numbers
  string = string.map do |char|
    if alphabet[char] != nil
      char = alphabet[char]
      char += key
      while char > 26
        char -= 26
      end
      while char < 1
        char += 26
      end
      char = numberbet[char]
    else
      char = char
    end
  end
  i = 0
  while i < original.length
    if original[i].upcase == original[i]
      string[i] = string[i].upcase
    end
    i += 1
  end
  string.join
end
