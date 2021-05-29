
void main() {
  a:
  for (var i = 0; i < 10; ++i) {
    for (var j = 0; j < 20; ++j) {
      if (i == 4) {
        break a;
      }
    }
  }
}
