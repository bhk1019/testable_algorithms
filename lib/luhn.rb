module Luhn

  def self.is_valid?(number)
    num_array = number.to_s.split('')
    sum = 0
    counter = 1
    16.times do
      current_digit = num_array.pop.to_i
      if counter % 2 == 0
        current_digit *= 2
        if current_digit >= 10
          current_digit -= 9
        end
      end
      sum += current_digit
      counter += 1
    end

    if sum % 10 == 0
      return true
    else
      return false
    end

  end

end