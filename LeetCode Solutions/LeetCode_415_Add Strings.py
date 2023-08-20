#415 Add Strings

class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        sys.set_int_max_str_digits(10000)
        answer = str(int(num1) + int(num2))
        #answer2 = str(answer)
        return answer