MIN = -2.pow(31)
MAX = 2.pow(31) - 1

# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
  answer = 0
  sign = 1
  if (dividend.negative? && !divisor.negative?) || (divisor.negative? && !dividend.negative?) 
    sign = -1
  end

  dividend = dividend.abs
  divisor = divisor.abs

  while dividend >= divisor
    shift = 1
    while dividend >= (divisor << shift)
      shift += 1
    end

    answer += (1 << (shift - 1))
    dividend -= divisor << (shift - 1)
  end

  quotient = sign == 1 ? answer : -answer

  return MIN if quotient < MIN
  return MAX if quotient > MAX
  quotient
end
