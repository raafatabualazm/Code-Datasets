main() {
    var x = List.filled(101,false);
    for (var k = 1; k <= 100; k++) {
        for (int i = k; i <= 100; i += k)
            x[i] = !x[i];
        if (x[k]) print("$k open");
    }
}
