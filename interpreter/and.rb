class And < Expression
  def initialize(expression_1, expression_2)
    @expression_1 = expression_1
    @expression_2 = expression_2
  end

  def evaluate(dir)
    result_1 = @expression_1.evaluate(dir)
    result_2 = @expression_2.evaluate(dir)
    result_1 & result_2
  end
end
