require_relative 'expression'

module FattureInCloud_Ruby_Sdk
  # The Condition class represents a single condition in a filter.
  class Condition < Expression
    attr_accessor :field, :operator, :value

    # Initializes a new instance of the Condition class.
    # @param [String] field The field to compare.
    # @param [Operator] operator The operator to use.
    # @param [String][Numeric][Boolean][nil] value The value to compare.
    def initialize(field, operator, value)
      @field = field
      @operator = operator
      @value = value
    end

    # Builds the query from the condition.
    # @return [String] The query.
    def build_query
      if @field.nil? || @field == ''
        throw 'cannot build a query with an empty condition'
      end

      if @operator.nil? || @operator == ''
        throw 'cannot build a query with an empty operator'
      end

      if @value.nil? || @value == 'null'
        "#{@field} #{@operator} null"
      elsif @value.instance_of? String
        "#{@field} #{@operator} '#{@value}'"
      else
        "#{@field} #{@operator} #{@value}"
      end
    end

    # Builds the query from the condition.
    # @return [String] The query.
    def to_s
      build_query
    end

    # Overrides the == operator.
    # @param [Condition] other The condition to compare.
    # @return [Boolean] True if the conditions are equal, false otherwise.
    def ==(other)
      if other.instance_of? Condition
        @field == other.field && @operator == other.operator && @value == other.value
      else
        false
      end
    end
  end
end
