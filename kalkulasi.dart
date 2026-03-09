import 'inputUser.dart';

void kalkulasi() {
  Map<String, double> data = inputBMI();

  double berat = data['berat']!;
  double tinggi = data['tinggi']!;

  // ubah tinggi dari cm ke meter dulu
  double tinggiMeter = tinggi / 100;
  // rumus BMI yaitu berat / (tinggi * tinggi)
  double hasilBmi = berat / (tinggiMeter * tinggiMeter);

  String status;
  if (hasilBmi < 18.5) {
    status = "Kurus";
  } else if (hasilBmi >= 18.5 && hasilBmi <= 24.9) {
    status = "Ideal/Normal";
  } else {
    status = "Gemuk";
  }

  print('Berat Badan  : $berat kg');
  print('Tinggi Badan : $tinggi cm');
  print('Skor BMI     : $hasilBmi');
  print('Status       : $status');
}