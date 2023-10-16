def isPalindrome(self, x: int) -> bool:
  z = str(x)
  y = z[::-1]
  return y == z