typedef MyCustom = Function(int a, int b);

int memoizedFibonacci(int originalValue) {
  final cache = {};
  int fib(currentValue) => cache[currentValue] ??= currentValue < 2
      ? currentValue
      : fib(currentValue - 1) + fib(currentValue - 2);
  return fib(originalValue);
}

int dynamicFibonacci(int number) {
  final list = [0, 1];
  for (var i = 2; i < number; ++i) {
    list.add(list[i - 1] + list[i - 2]);
  }
  return list[list.length - 1];
}

int slowFibonacci(int number) {
  return number < 2
      ? number
      : slowFibonacci(number - 1) + slowFibonacci(number - 2);
}

void main() {
  print(memoizedFibonacci(50));
}
