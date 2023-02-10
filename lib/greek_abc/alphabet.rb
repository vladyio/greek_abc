# frozen_string_literal: true

module GreekABC
  #
  # Alphabet representation
  #
  # @!attribute [r] letters
  #   @return [Array<Letter>] an array of all letters of the alphabet
  class Alphabet
    attr_accessor :letters

    # Initialize an Alphabet object, a collection of all letters
    #
    # @return [Array<Letter>]
    def initialize
      @letters = ALPHABET.map.with_index(1) do |(name, letter_variant), index|
        letter = letter_variant[0]
        letter_alt = letter_variant[1]

        Letter.new(position: index, name: name, lower: letter,
                   lower_alt: letter_alt, upper: letter.upcase)
      end
    end

    # Hash representation of an alphabet
    # @return [Hash{String => String, Integer}]
    def to_h
      letters.each_with_object({}) do |letter, hash|
        hash[letter.name.to_s] = {
          position: letter.position,
          lower: letter.lower,
          lower_alt: letter.lower_alt,
          upper: letter.upper
        }
      end
    end

    # String representation of an alphabet
    # @return [String]
    def to_s
      letters
    end
  end
end
