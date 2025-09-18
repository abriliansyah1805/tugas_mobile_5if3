import 'dart:io';

int perkalian(int a, int b) {
  return a * b;
}

void main() {
  stdout.write("Masukkan angka pertama: ");
  int angka1 = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan angka kedua: ");
  int angka2 = int.parse(stdin.readLineSync()!);

  print("hasil perkalian ${perkalian(angka1, angka2)}");
}
