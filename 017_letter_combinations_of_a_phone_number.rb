DIGITS_TO_LETTERS = {
  2 => %w[a b c],
  3 => %w[d e f],
  4 => %w[g h i],
  5 => %w[j k l],
  6 => %w[m n o],
  7 => %w[p q r s],
  8 => %w[t u v],
  9 => %w[w x y z],
}

# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  digits = digits.split('').map(&:to_i)

  digits.each_with_index.reduce([]) do |final, (digit, i)|
    letters = DIGITS_TO_LETTERS[digit]
    if i == 0
      new_final = letters
    else 
      new_final = []
      (0...final.length).each do |j|
        (0...letters.length).each do |k|
          new_final << "#{final[j]}#{letters[k]}"
        end
      end
    end
    final = new_final
  end
end

