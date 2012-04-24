class PrimeFactors

  def self.get(number)
    result = []
    candidate = 2
    while number > 1
      while number.modulo(candidate) == 0
        result << candidate
        number = number / candidate
      end
      candidate += 1
    end
    return result
  end

end