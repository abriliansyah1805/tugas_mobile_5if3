import 'dart:io';

void main() {
  Map<String, String> akun = {
    "bryan": "12345",
    "user": "qwerty",
    "pangeran": "abcde"
  };

  stdout.write("Masukkan username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Masukkan password: ");
  String password = stdin.readLineSync()!;

  if (akun.containsKey(username)) {
    if (akun[username] == password) {
      print("Login berhasil! ");
    } else {
      print("Password salah!");
    }
  } else {
    print("Username tidak ditemukan!");
  }
}
