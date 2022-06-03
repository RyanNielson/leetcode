MIN = -2.pow(31)
MAX = 2.pow(31) - 1

# @param {String} s
# @return {Integer}
def my_atoi(s)
  s.lstrip!
  negative = (s[0] == '-' || s[0] == '+') && (s.slice!(0) == '-')
  digits = s.chars.take_while { /[0-9]/.match?(_1) }.join
  number = if digits.empty?
             0
           else
             negative ? digits.to_i * -1 : digits.to_i
           end

  if number < MIN
    MIN
  elsif number > MAX
    MAX
  else
    number
  end
end
