void main() {
  var arr = [1,2,3,4];
  arr = arr.map((v)=>v*v).toList();
  print(arr);
}