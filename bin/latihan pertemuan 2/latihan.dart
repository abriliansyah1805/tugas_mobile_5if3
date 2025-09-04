import 'dart:io';

void main() {
  while (true) {
    // Input angka pertama
    stdout.write("Masukkan angka pertama: ");
    double a = double.parse(stdin.readLineSync()!);

    // Input operator
    stdout.write("Masukkan operator (+, -, *, /): ");
    String op = stdin.readLineSync()!;

    // Input angka kedua
    stdout.write("Masukkan angka kedua: ");
    double b = double.parse(stdin.readLineSync()!);

    // Pilih operasi dengan switch case
    switch (op) {
      case "+":
        print("Hasil: ${a + b}");
        break;
      case "-":
        print("Hasil: ${a - b}");
        break;
      case "*":
        print("Hasil: ${a * b}");
        break;
      case "/":
        if (b != 0) {
          print("Hasil: ${a / b}");
        } else {
          print("Error: Tidak bisa dibagi nol!");
        }
        break;
      default:
        print("Operator tidak valid!");
    }

    // Konfirmasi lanjut
    stdout.write("Lanjut hitung? (y/n): ");
    if (stdin.readLineSync()!.toLowerCase() != "y") {
      break;
    }
  }

  print("Program selesai.");
}