module Collatz
  def self.n_with_longest_length_in(start, finish)
    longest_length_so_far = 0
    current_length = 0
    current_n = start
    longest_length_n = start
    repetitions = finish - start + 1
    repetitions.times do
      current_length = length_of(current_n)
      if current_length > longest_length_so_far
        longest_length_so_far = current_length
        longest_length_n = current_n
      end
      current_n += 1
    end
    return longest_length_n
  end

  def self.length_of(n)
    length = 1
    if n == 1
      return 1
    end
    current_n = n
    next_n = 0
    until next_n == 1
      next_n = next_n_of(current_n)
      current_n = next_n
      length += 1
    end
    return length
  end

  def self.next_n_of(n)
    if n == 1
      return 1
    end
    if n % 2 == 0
      return (n/2)
    else
      return (3*n + 1)
    end
  end

end

puts Collatz.n_with_longest_length_in(1, 1000000)