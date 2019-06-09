require "pry"
class Anagram

    attr_accessor :words

    def initialize(words)
        @words = words
    end
    
    def match(input)
        input.select do |words|
            words.split("").sort == @words.split("").sort
        end
    end

end