# frozen_string_literal: true

module GreekABC
  #
  # Represents a letter object
  #
  # @!attribute [r] position
  #   @return [Integer] letter position in the alphabet
  # @!attribute [r] name
  #   @return [String] letter name
  # @!attribute [r] lower
  #   @return [String] lowercase representation
  # @!attribute [r] lower_alt
  #   @return [String, nil] lowercase alternative represenation, if exists
  # @!attribute [r] upper
  #   @return [String] uppercase representation
  class Letter
    attr_reader :position, :name, :lower, :lower_alt, :upper

    # Initialize a new letter
    #
    # @param [Integer] position (see {position})
    # @param [String] name (see {name})
    # @param [String] lower (see {lower})
    # @param [String] upper (see {upper})
    # @param [String, nil] lower_alt (see {lower_alt})
    # @return [Letter]
    #
    def initialize(position:, name:, lower:, upper:, lower_alt: nil)
      @position = position
      @name = name
      @lower = lower
      @lower_alt = lower_alt
      @upper = upper
    end

    #
    # String representation of a {Letter} object
    # @return [String]
    def to_s
      lower_alt = " / #{@lower_alt}" if @lower_alt

      "Letter ##{@position} '#{@name}', lowercase '#{@lower}" \
      "#{lower_alt}', uppercase '#{@upper}'"
    end
  end
end
