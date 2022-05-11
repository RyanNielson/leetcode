# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  first = 0
  last = 0
  longest = 0

  while last < s.length
    slice = s[first..last]
    next_char = s[last + 1]

    if next_char.nil? || slice.include?(next_char)
      first += 1
      last = first
      longest = slice.length if slice.length > longest
    else
      last += 1
    end
  end

  longest
end
