import 'dart:io';

void histori() {
  while (true) {
    stdout.write("Apakah ingin melihat riwayat perhitungan? ");
    String? input = stdin.readLineSync()?.toLowerCase();

    if (input == null || input.isEmpty) {
      print('Inputan tidak boleh kosong silahkan pilih ya atau tidak');
      continue;
    }

    if (input == 'ya') {
    } else if (input == 'tidak') {
      print('terimakasih sudah menggunakan sistem ini');
      break;
    } else {
      print('Invalid input, try again');
    }
  }
}
