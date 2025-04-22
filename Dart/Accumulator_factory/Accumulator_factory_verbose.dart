typedef Accumulator = num Function(num);

Accumulator makeAccumulator(num initial) {
  num s = initial;
  num accumulator(num n) {
    s += n;
    return s;
  }
  return accumulator;
}


void main() {
  var x = makeAccumulator(1);
  x(5);
  makeAccumulator(3);
  print(x(2.3));
}
