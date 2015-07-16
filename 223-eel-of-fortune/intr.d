import std.stdio;
import std.string;

pure bool problem(string word, string nope) @nogc {
  long start = 0;
  foreach (char n; nope) {
    immutable long found = word.indexOf(n, start);
    if (found >= 0) {
      start = found + 1;
    } else {
      return false;
    }
  }
  return true;
}

void main() {
  writeln("synchronized".problem("snond")); // true
  writeln("shotgunned".problem("snond")); // false
}
