require './Sum'
require './Minus'

class Calculator
  OPERATOR = {'+' => Sum, '-' => Minus}

  def calculate(value)
    separate_numbers = value.split(' ')
    calculate_operator = OPERATOR[separate_numbers[1]]
    calculate_operator.apply(separate_numbers[0].to_i, separate_numbers[2].to_i)
  end

end
