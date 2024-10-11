import sys
import textParser
from textParser import textparser

file1 = r"C:\Users\perry\OneDrive\Desktop\Classes\projects\LibertyJailLetters_Analysis\Letter1.txt"
file2 = r"C:\Users\perry\OneDrive\Desktop\Classes\projects\LibertyJailLetters_Analysis\Letter2.txt"

word_map = {}

textparser(word_map, file1)
textparser(word_map, file2)

print(word_map)

