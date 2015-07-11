# Solutions to #221 Word Snake - http://redd.it/3bi5na

import rdstdin
import strutils
import sequtils

proc isProperSnake(words: seq[string]): bool =
  for i in low(words)..high(words)-1:
    if words[i+1][0] != words[i][len(words[i])-1]:
      return false
  return true

proc printVertical(position: int, word: string): int =
  for letter in word:
    echo ' '.repeat(position), letter
  return position

proc printHorizontal(position: int, word: string): int =
  echo ' '.repeat(position), word
  return position + len(word.strip())-1

if isMainModule:
  let words = "SHENANIGANS SALTY YOUNGSTER ROUND DOUBLET TERABYTE ESSENCE".toUpper().split(" ")
  var count = 0
  var position = 0
  if isProperSnake(words):
    for word in words:
      if count %% 2 == 0:
        position = printHorizontal(position, word)
      else:
        position = printVertical(position, word)
      count = count + 1
  else:
    echo "This is not a proper snake"
