int countDivisors(int n) {
  if (n < 2) return 1;
  int count = 2; // 1 and n
  for (int i = 2; i <= n / 2; ++i) {
    if (n % i == 0) ++count;
  }
  return count;
}

void main() {
  int maxDiv = 0, count = 0;
  print("The first 20 anti-primes are:");
  for (int n = 1; count < 20; ++n) {
    int d = countDivisors(n);
    if (d > maxDiv) {
      print("$n ");
      maxDiv = d;
      count++;
    }
  }
  print("");
}