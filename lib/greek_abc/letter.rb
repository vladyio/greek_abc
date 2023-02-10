module GreekABC
  class Letter
    attr_reader :position, :name, :lower, :lower_alt, :upper

    def initialize(position:, name:, lower:, upper:, lower_alt: nil)
      @position = position
      @name = name
      @lower = lower
      @lower_alt = lower_alt
      @upper = upper
    end

    def to_s
      lower_alt = " / #{@lower_alt}" if @lower_alt

      "Letter ##{@position} '#{@name}', lowercase '#{@lower}" \
      "#{lower_alt}', uppercase '#{@upper}'"
    end
  end
end
