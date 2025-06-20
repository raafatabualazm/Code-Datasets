typedef Accumulator = num Function(num);

Accumulator makeAccumulator(num s) => (num n) => s += n;

void main() {
  var x = makeAccumulator(1);
  x(5);
  makeAccumulator(3);
  print(x(2.3));
}
