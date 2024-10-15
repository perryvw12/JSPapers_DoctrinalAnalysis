from textParser import textparser
from pandaHandler import framer, exporter

file1 = r"C:\Users\perry\OneDrive\Desktop\Classes\projects\LibertyJailLetters_Analysis\Letter1.txt"
file2 = r"C:\Users\perry\OneDrive\Desktop\Classes\projects\LibertyJailLetters_Analysis\Letter2.txt"

letter1 = {}
letter2 = {}

textparser(letter1, file1)
textparser(letter2, file2)

dfLetter1 = framer(letter1)
dfLetter2 = framer(letter2)

exporter(dfLetter1, "letter1.csv")
