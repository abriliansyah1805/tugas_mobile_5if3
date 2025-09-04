import 'dart:io';

void main() {
  stdout.write("Masukkan nilai mahasiswa: ");
  int nilai = int.parse(stdin.readLineSync()!);

  if (nilai >= 85) {
    print("Nilai A");
  } else if (nilai >= 70) {
    print("nilai B");
  } else if (nilai >= 55) {
    print("Nilai C");
  } else if (nilai >= 40) {
    print("nilai D");
  } else {
    print("Nilai E");
  }
}