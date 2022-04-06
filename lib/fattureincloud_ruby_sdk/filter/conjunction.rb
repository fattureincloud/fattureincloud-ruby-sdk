module FattureInCloud_Ruby_Sdk
  # The Conjunction class is used to build a conjunction of two expressions.
  class Conjunction < Expression
    attr_accessor :left, :right

    # Initializes a new instance of the Conjunction class.
    # @param [Expression] left The left expression.
    # @param [Expression] right The right expression.
    def initialize(left, right)
      @left = left
      @right = right
    end

    # Builds the query from the conjunction.
    # @return [String] The query.
    def build_query
      "(#{@left.build_query} and #{@right.build_query})"
    end

    # Builds the query from the conjunction.
    # @return [String] The query.
    def to_s
      build_query
    end

    # Overrides the == operator.
    # @param [Conjunction] other The conjunction to compare.
    # @return [Boolean] True if the conjunctions are equal, false otherwise.
    def ==(other)
      if other.instance_of? Conjunction
        @left == other.left && @right == other.right
      else
        false
      end
    end
  end
end
