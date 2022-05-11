MAPPINGS = {
  ')' => '(',
  ']' => '[',
  '}' => '{'
}

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  s.chars.each do |paren|
    if MAPPINGS.key?(paren)
      last = stack.pop
      return false if last != MAPPINGS[paren]
    else
      stack.push(paren)
    end
  end

  stack.empty?
end
