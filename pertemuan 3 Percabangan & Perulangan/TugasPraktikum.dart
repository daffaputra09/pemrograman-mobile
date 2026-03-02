void main() {
  String nama = "Daffa Putra Prasetya";
  String nim = "244107060088";

  for (int i = 0; i <= 201; i++) {
    bool isPrima = true;

    if (i < 2) {
      isPrima = false;
    } else {
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          isPrima = false;
          break;
        }
      }
    }

    if (isPrima) {
      print("$i - $nama ($nim)");
    } else {
      print("$i");
    }
  }
}

