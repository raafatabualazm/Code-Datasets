String btl(int n) {
  return n==1?"bottle":"bottles";
}
main() {
  for (int i = 99; i >= 1; i--) {
    print("$i ${btl(i)} of beer on the wall");
    print("$i ${btl(i)} of beer");
    print("Take one down, pass it around");
    print("${i-1} ${btl(i-1)} of beer on the wall\n");
  }
}
