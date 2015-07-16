# Solution to http://redd.it/3ddpms

import strutils

proc problem(word: string, nope: string): bool =
  var start  = 0
  for n in nope:
    let found = find(word, n, start)
    #echo word, ", ", nope, ", ", n, ", start=", start, ", found=", found
    if found >= 0:
      start = found + 1
    else:
      return false
  return true

if isMainModule:
  echo problem("synchronized", "snond") #-> true
  echo problem("misfunctioned", "snond") #-> true
  echo problem("mispronounced", "snond") #-> true #wrongly mentioned as false in challenge page
  echo problem("shotgunned", "snond") #-> false
  echo problem("snond", "snond") #-> true
