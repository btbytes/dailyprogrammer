#!/usr/bin/env rdmd
import std.stdio;

long garland(string word) {
  long count = 0;
  immutable long wl = word.length;
  foreach (long i; 0..wl) {
    string a = word[0..i];
    string b = word[(wl-i)..wl];
    if (a == b) {
      count = a.length;
    }
  }
  return count;
}


void main (string[] args) {
  writeln(garland("ceramic")); // 1
  writeln(garland("onion")); // 2
  writeln(garland("alfalfa")); // 4
}
