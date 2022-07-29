MAPPINGS = {
  1 => 'I',
  4 => 'IV',
  5 => 'V',
  9 => 'IX',
  10 => 'X',
  40 => 'XL',
  50 => 'L',
  90 => 'XC',
  100 => 'C',
  400 => 'CD',
  500 => 'D',
  900 => 'CM',
  1000 => 'M'
}

# @param {Integer} num
# @return {String}
def int_to_roman(num)
  MAPPINGS
    .sort
    .reverse
    .map do |k, v|
      amount = num / k
      num -= (k * amount)
      v * amount
    end
    .join
end
