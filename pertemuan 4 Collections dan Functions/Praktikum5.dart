// Langkah 1
// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }

// Langkah 3
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var record = (10, 20);
//   print('Record awal : $record');

//   var hasilTukar = tukar(record);
//   print('Record setelah tukar : $hasilTukar');
// }

// Langkah 4
// void main() {
//   (String, int) mahasiswa;
//   mahasiswa = ('Daffa Putra Prasetya', 244107060088);

//   print(mahasiswa);
// }

// Langkah 5
void main() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');
  print(mahasiswa2.$1); // 'first'
  print(mahasiswa2.a);  // 2
  print(mahasiswa2.b);  // true
  print(mahasiswa2.$2); // 'last'

  print("================================================");
  mahasiswa2 = ('Daffa Putra Prasetya', a: 244107060088, b: true, 'last');
  print(mahasiswa2.$1); // Nama
  print(mahasiswa2.a);  // NIM
  print(mahasiswa2.b);  // true
  print(mahasiswa2.$2); // 'last'
}

