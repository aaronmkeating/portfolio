#58. Length of Last Word

class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        words = s.split() #splits the words in a string
        chose = words[-1] #choses the last word in words list
        return len(chose)