import 'dart:io';

void main() {

  stdout.write("Masukkan nama : ");
  String nama = stdin.readLineSync()!;

  stdout.write("jumlah jam kerja dalam seminggu: ");
  int jamkerja = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan upah per jam: ");
  double upahperjam = double.parse(stdin.readLineSync()!);

  stdout.write("Apakah karyawan tetap? (true/false): ");
  bool statustetap = bool.parse(stdin.readLineSync()!);

  double gajikotor = jamkerja * upahperjam; 

  double pajak;
  if (statustetap) {
    pajak = gajikotor * 0.10;
  } else {
    pajak = gajikotor * 0.05;
  }

  double gajibersih = gajikotor - pajak;

  print("\n=== Hasil Perhitungan Gaji ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp $gajikotor");
  print("Pajak         : Rp $pajak");
  print("Gaji Bersih   : Rp $gajibersih");
}
