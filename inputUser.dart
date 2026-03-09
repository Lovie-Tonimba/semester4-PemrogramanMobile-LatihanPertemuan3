import 'dart:io';

Map<String, double> inputBMI() {
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
      return {'berat': inputB, 'tinggi': inputT};
    }
  }
}
