import 'dart:io';

void inputBMI() {
  double berat = 0, tinggi = 0;

  while (true) {
    stdout.write("Masukkan berat (kg) : ");
    double inputB = double.tryParse(stdin.readLineSync() ?? "") ?? 0;
    stdout.write("Masukkan tinggi (cm) : ");
    double inputT = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

    if (inputB <= 0 || inputT <= 0) {
      print('Input harus berupa angka valid dan lebih dari 0');
      print("-----------------------------------------------");
      continue;
    } else {
      berat = inputB;
      tinggi = inputT;
      print('Data berhasil disimpan\nBerat: $berat kg dan Tinggi: $tinggi cm');
      break;
    }
  }
}