# frozen_string_literal: true

require 'greek_abc/version'
require 'greek_abc/constants'
require 'greek_abc/letter'
require 'greek_abc/letter_lookup'
require 'greek_abc/alphabet'

module GreekABC
  class GreekABCError < StandardError; end

  # Raised when the lookup parameter is not a valid {Letter} attribute
  class LetterLookupParamsError < GreekABCError
    def initialize(wrong_parameter)
      super("`#{wrong_parameter}` is not an existing letter attribute")
    end
  end

  # Raised when the passed parameter and value didn't match any {Letter}
  class LetterNotFoundError < GreekABCError
    def initialize(parameter, value)
      super("Letter with `#{parameter}: #{value}` was not found")
    end
  end
end
