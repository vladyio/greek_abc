module GreekABC
  class Alphabet
    attr_accessor :letters

    ALPHABET.map.with_index(1) do |(name, letter), index|
      define_singleton_method(:"#{name.downcase}") do
        Letter.new(position: index, name: name, lower: letter,
                   upper: letter.upcase)
      end
    end

    def initialize
      @letters = ALPHABET.map.with_index(1) do |(name, letter), index|
        Letter.new(position: index, name: name, lower: letter,
                   upper: letter.upcase)
      end
    end

    def find_letter_by(**lookup)
      parameter = lookup.keys.first
      value = lookup.values.first

      unless letter_parameter?(parameter)
        raise LetterLookupError, "Letter does not have parameter `#{parameter}`"
      end

      result = @letters.select do |letter|
        letter if letter.send(parameter.to_sym) == value
      end

      if result.empty?
        raise LetterNotFoundError, "Letter with `#{parameter}: #{value}` not found"
      else
        result.first
      end
    end

    def to_h
      @letters.each_with_object({}) do |letter, hash|
        hash[letter.name.to_s] = {
          position: letter.position,
          lower: letter.lower,
          upper: letter.upper
        }
      end
    end

    def to_s
      @letters
    end

    private

    def letter_parameter?(parameter)
      parameters = %i[name position lower upper]
      parameters.include?(parameter)
    end
  end
end
