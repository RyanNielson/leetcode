# @param {String} s
# @return {Integer}
def roman_to_int(s)
  values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000,
    'IV' => 4,
    'IX' => 9,
    'XL' => 40,
    'XC' => 90,
    'CD' => 400,
    'CM' => 900
  }

  output = 0
  chars = s.chars
  until chars.empty?
    pair = chars.take(2)
    joined = pair.join

    if values.include?(joined)
      output += values[joined]
      chars.shift(2)
    else
      output += values[pair[0]]
      chars.shift(1)
    end
  end

  output
end
