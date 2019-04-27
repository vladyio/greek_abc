module GreekABC
  class Letter
    attr_reader :position, :name, :lower, :upper

    def initialize(position:, name:, lower:, upper:)
      @position = position
      @name = name
      @lower = lower
      @upper = upper
    end

    def to_s
      "Letter ##{@position} '#{@name}', lowercase '#{@lower}', uppercase '#{@upper}'"
    end
  end
end
