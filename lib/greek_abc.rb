require 'greek_abc/version'

require 'greek_abc/constants'
require 'greek_abc/letter'
require 'greek_abc/alphabet'

module GreekABC
  class GreekABCError < StandardError; end
  class LetterLookupError < GreekABCError; end
  class LetterNotFoundError < GreekABCError; end
end
