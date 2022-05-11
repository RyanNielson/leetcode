# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  x == x.to_s.reverse.to_i
end
