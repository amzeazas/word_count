class String
  define_method(:word_count) do |target_word|
    new_string = self.downcase.scan(/\w+/)
    target_word = target_word.downcase()

    new_array = new_string.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

    if new_array.include?(target_word)
      final_count = new_array.fetch(target_word)
    else
      final_count = 0
    end

    final_count
  end
end
