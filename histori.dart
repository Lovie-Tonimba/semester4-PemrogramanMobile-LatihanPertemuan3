import 'dart:io';
import 'kalkulasi.dart';

void histori() {
  while (true) {
    stdout.write("Apakah ingin melihat riwayat perhitungan? ");
    String? input = stdin.readLineSync()?.toLowerCase();

    if (input == null || input.isEmpty) {
      print('Inputan tidak boleh kosong silahkan pilih ya atau tidak');
      continue;
    }

    if (input == 'ya') {
      print("-- Daftar Riwayat Perhitungan BMI --");
      if (riwayatBmi.isEmpty) {
        print('Belum ada data.');
        break;
      } else {
        for (int i = 0; i < riwayatBmi.length; i++) {
          print('${i + 1} = ${riwayatBmi[i]}');
        }
      }
    } else if (input == 'tidak') {
      print('Terimakasih sudah menggunakan sistem ini');
      break;
    }

    stdout.write("\nApakah ingin menghitung BMI lagi? (ya/tidak): ");
    String? inputLagi = stdin.readLineSync()?.toLowerCase();
    if (inputLagi == 'ya') {
      kalkulasi();
    } else if (inputLagi == 'tidak') {
      print('Terimakasih sudah menggunakan sistem ini');
      break;
    } else {
      print('Invalid input, try again');
    }
  }
}