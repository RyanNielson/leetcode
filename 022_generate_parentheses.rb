# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  (n - 1).times.reduce(["()"]) do |acc, _i|
    acc.flat_map do |old|
      old.length.times.map do |i|
        old.clone.insert(i, "()")
      end
    end
    .uniq
  end
end
