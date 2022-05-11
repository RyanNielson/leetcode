# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  first, *rest = strs.map(&:chars)
  matches = first.zip(*rest).map { |group| group.uniq.count == 1 }
  return first.join if matches.all?

  end_index = matches.index(&:!)
  first.take(end_index).join
end
