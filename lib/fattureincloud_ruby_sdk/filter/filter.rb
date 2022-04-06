require 'cgi'

module FattureInCloud_Ruby_Sdk
  # The Filter class is used to build a filter.
  class Filter
    attr_accessor :expression

    # Initializes a new instance of the Filter class.
    # @param [Expression] expression The expression.
    def initialize(expression = nil)
      @expression = expression
    end

    # Initializes a new instance of the Filter class with a Condition.
    # @param [String] field The field to compare.
    # @param [Operator] operator The operator to use.
    # @param [String][Numeric][Boolean][nil] value The value to compare.
    def where(field, operator, value)
      @expression = Condition.new(field, operator, value)
      self
    end

    # Initializes a new instance of the Filter class with an Expression.
    # @param [Expression] expression The expression.
    def where_expression(expression)
      @expression = expression
      self
    end

    # Adds an AND condition to the filter.
    # @param [String] field The field to compare.
    # @param [Operator] operator The operator to use.
    # @param [String][Numeric][Boolean][nil] value The value to compare.
    def and(field, operator, value)
      if @expression.nil?
        raise 'Cannot create a conjunction with an empty expression.'
      end

      left = @expression
      right = Condition.new(field, operator, value)
      @expression = Conjunction.new(left, right)
      self
    end

    # Adds an AND expression to the filter.
    # @param [Expression] expression The expression.
    def and_expression(expression)
      if @expression.nil? || expression.nil?
        raise 'Cannot create a conjunction with an empty expression.'
      end

      left = @expression
      right = expression
      @expression = Conjunction.new(left, right)
      self
    end

    # Adds an AND expression to the filter.
    # @param [Filter] filter The filter.
    def and_filter(filter)
      if @expression.nil? || filter.nil? || filter.expression.nil?
        raise 'Cannot create a conjunction with an empty expression.'
      end

      left = @expression
      right = filter.expression
      @expression = Conjunction.new(left, right)
    end

    # Adds an OR condition to the filter.
    # @param [String] field The field to compare.
    # @param [Operator] operator The operator to use.
    # @param [String][Numeric][Boolean][nil] value The value to compare.
    def or(field, operator, value)
      if @expression.nil?
        raise 'Cannot create a disjunction with an empty expression.'
      end

      left = @expression
      right = Condition.new(field, operator, value)
      @expression = Disjunction.new(left, right)
      self
    end

    # Adds an OR expression to the filter.
    # @param [Expression] expression The expression.
    def or_expression(expression)
      if @expression.nil? || expression.nil?
        raise 'Cannot create a disjunction with an empty expression.'
      end

      left = @expression
      right = expression
      @expression = Disjunction.new(left, right)
      self
    end

    # Adds an OR filter to the filter.
    # @param [Filter] filter The filter.
    def or_filter(filter)
      if @expression.nil? || filter.nil? || filter.expression.nil?
        raise 'Cannot create a disjunction with an empty expression.'
      end

      left = @expression
      right = filter.expression
      @expression = Disjunction.new(left, right)
      self
    end

    # Builds the query from the filter.
    # @return [String] The query.
    def build_query
      if @expression.nil?
        ''
      else
        @expression.build_query
      end
    end

    # Builds the query from the filter.
    # @return [String] The query.
    def to_s
      build_query
    end

    # Builds the url encoded query from the filter.
    # @return [String] The url encoded query.
    def build_url_encoded_query
      CGI.escape(build_query)
    end

    # Overrides the == operator.
    # @param [Filter] other The filter to compare.
    # @return [Boolean] True if the filters are equal, false otherwise.
    def ==(other)
      if other.instance_of? Filter
        @expression == other.expression
      else
        false
      end
    end
  end
end
