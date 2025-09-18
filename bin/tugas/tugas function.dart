import 'dart:io';

double tambah(double a, double b) {
  return a + b;
}

double kurang(double a, double b) {
  return a - b;
}

double kali(double a, double b) {
  return a * b;
}

double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa membagi dengan nol!");
    return 0;
  }
  return a / b;
}

void main() {
  stdout.write("Masukkan angka pertama: ");
  double angka1 = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan operator (+, -, *, /): ");
  String operator = stdin.readLineSync()!;

  stdout.write("Masukkan angka kedua: ");
  double angka2 = double.parse(stdin.readLineSync()!);

  double hasil = 0;

  switch (operator) {
    case '+':
      hasil = tambah(angka1, angka2);
      break;
    case '-':
      hasil = kurang(angka1, angka2);
      break;
    case '*':
      hasil = kali(angka1, angka2);
      break;
    case '/':
      hasil = bagi(angka1, angka2);
      break;
    default:
      print("Operator tidak valid!");
      return;
  }

  print("Hasil: $angka1 $operator $angka2 = $hasil");
}
