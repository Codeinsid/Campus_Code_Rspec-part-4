class WordPuzzle
  ALPHABET = "abcdefghijklmnopqrstuvwxyz"
  
  def phrase_weight(phrases)
    phrases.map { |phrase| calculate_phrase_weight(phrase) }
  end

  def calculate_phrase_weight(phrase)
    phrase.split.sum { |word| calculate_word_weight(word) }
  end

  def calculate_word_weight(word)
    return 0 if word.downcase.chars.sort == word.downcase.chars

    word.chars.sum { |char| calculate_char_weight(char) }
  end

  def calculate_char_weight(char)
    index = ALPHABET.index(char.downcase) + 1
    char.upcase == char ? -index : index
  end
end

