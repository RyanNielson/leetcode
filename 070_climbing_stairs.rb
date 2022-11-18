# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  solve(n, {})
end

def solve(n, memo)
  return n if n == 1 || n == 2
  return memo[n] if memo.key?(n)

  memo[n] = solve(n - 1, memo) + solve(n - 2, memo)
end
