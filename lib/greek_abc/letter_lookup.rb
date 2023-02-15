# frozen_string_literal: true

module GreekABC
  #
  # Letter lookup utility class
  # @!attribute [r] letters
  #   @return [Array<Letter>]
  class LetterLookup
    # @dynamic letters
    attr_reader :letters

    # All available letter attributes.
    # @see #letter_parameter?
    LOOKUP_PARAMETERS = %i[name position lower lower_alt upper].freeze

    # @param [Array<Letters>] letters
    #   An array of letters generated by GreekABC::Alphabet.new.letters
    def initialize(letters)
      @letters = letters
    end

    # Finds a letter by given lookup parameteres
    # @example
    #   letters = GreekABC::Alphabet.new.letters
    #   GreekABC::LetterLookup.new(letters).find_letter(name: 'Lambda') # => #<GreekABC::Letter:...
    # @param [Hash{Symbol => String, Integer}] lookup_params
    #   A hash, with some {Letter} attribute as a key and desired lookup value
    # @return [Letter]
    # @raise [LetterLookupParamsError] if passed parameter is not an existing
    #   letter attribute
    # @raise [LetterNotFoundError] if a letter with given parameters does not exist
    # @see Alphabet#find_letter
    def find_letter(**lookup_params) # rubocop:disable Metrics/AbcSize
      # @type var lookup_params: Hash[Symbol | untyped, String | Integer | nil]
      parameter = lookup_params.keys.first.to_sym
      value = lookup_params.values.first

      raise LetterLookupParamsError, parameter unless letter_parameter?(parameter)

      result = letters.find do |letter|
        letter if letter.send(parameter).to_s.downcase == value.to_s.downcase
      end

      raise LetterNotFoundError.new(parameter, value) unless result

      result
    end

    private

    def letter_parameter?(parameter)
      LOOKUP_PARAMETERS.include?(parameter)
    end
  end
end
