# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length == 1

  s.each_char.with_index.reduce('') do |longest, (_char, i)|
    longest = find_longest_palindrome_slice(s, longest, i, i)
    find_longest_palindrome_slice(s, longest, i, i + 1)
  end
end

def find_longest_palindrome_slice(s, current_longest, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end

  slice = s[left + 1..right - 1]
  slice.length > current_longest.length ? slice : current_longest
end
