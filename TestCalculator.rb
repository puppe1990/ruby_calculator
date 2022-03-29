require './Calculator'

class TestCalculator

  def self.test_sums
    values = Calculator.new.calculate('1 + 1')
    print_test(values, 2)
  end

  def self.another_test_sums
    values = Calculator.new.calculate('2 + 5')
    print_test(values, 7)
  end

  def self.thirt_test_sums
    values = Calculator.new.calculate('3 + 8')
    print_test(values, 11)
  end

  def self.test_minus
    values = Calculator.new.calculate('8 - 3')
    print_test(values, 5)
  end

  private

  def self.print_test(values, expected)
    if values == expected
      puts "passou teste"
    else
      puts "nao passou teste número esperado #{expected} retornou #{values}"
    end 
  end

end

TestCalculator.test_sums
TestCalculator.another_test_sums
TestCalculator.thirt_test_sums
TestCalculator.test_minus 