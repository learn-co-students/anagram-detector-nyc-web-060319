# Your code goes here!
class Anagram
    attr_reader :word
    def initialize(word)
        @word = word
    end

    def match(word_list)

        matching_word_hash = self.char_hash(@word)

        word_list.select do |word|
            self.char_hash(word) == matching_word_hash
        end
    end


    def char_hash(word)
        char_hash = {}
        word.chars.each do |char|
            if char_hash.keys.include?(char)
                char_hash[char] += 1
            else
                char_hash[char] = 1
            end
        end
        char_hash
    end
end
