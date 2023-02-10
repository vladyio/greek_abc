# frozen_string_literal: true

module GreekABC
  #
  # Represents a letter object
  #
  class Letter
    attr_reader :position, :name, :lower, :lower_alt, :upper

    # Initialize a new letter
    #
    # @param [Integer] position Letter position in the alphabet
    # @param [String] name Letter name
    # @param [String] lower Lowercase representation
    # @param [String] upper Uppercase representation
    # @param [String, nil] lower_alt Lowercase alternative represenation, if exists
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
    # String representation of a [Letter] object
    #
    def to_s
      lower_alt = " / #{@lower_alt}" if @lower_alt

      "Letter ##{@position} '#{@name}', lowercase '#{@lower}" \
      "#{lower_alt}', uppercase '#{@upper}'"
    end
  end
end
