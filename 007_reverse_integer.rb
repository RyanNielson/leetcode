MIN = -2.pow(31)
MAX = 2.pow(31) - 1

# @param {Integer} x
# @return {Integer}
def reverse(x)
  reversed = x.to_s.reverse.to_i
  reversed *= -1 if x.negative?

  return 0 if reversed <= MIN || reversed >= MAX

  reversed
end
