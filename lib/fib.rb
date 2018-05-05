require 'benchmark'

module Fib
  def self.fib_iterative(n)
    n_minus_2 = 0
    n_minus_1 = 1
    output = 0
    if n == 0
      return 0
    elsif n == 1
      return 1
    end
    (n-1).times do
      output = n_minus_1 + n_minus_2
      n_minus_2 = n_minus_1
      n_minus_1 = output
    end
    return output
  end

  def self.fib_recursive(n)
    if n == 0
      return 0
    elsif n == 1
      return 1
    end
    return fib_recursive(n-1) + fib_recursive(n-2)
  end
end

