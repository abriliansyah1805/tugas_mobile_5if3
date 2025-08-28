import 'dart:io';

void main() {
  stdout.write(" masukkan panjang: ");
  double panjang = double.parse(stdin.readLineSync()!);

  stdout.write("masukkan lebar: ");
  double lebar = double.parse(stdin.readLineSync()!);

  double luas = panjang * lebar;
  print("luas : $luas");

  double keliling = 2 * (panjang + lebar);
  print("keliling : $keliling");
}
