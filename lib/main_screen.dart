import 'package:flutter/material.dart';
import 'package:tugas_data_dan_navigasi/second_screen.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea( // SafeArea biar ukurannya ngikutin ukuran layar
      child: Scaffold(
        appBar: AppBar(
          title: Text("Portal Pengajuan Beasiswa"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
          vertical: 12, horizontal: 24,
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Selamat Datang di Portal Pengajuan Beasiswa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Untuk mengajukan beasiswa, silahkan tekan tombol pengajuan di bawah ini!",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50.0),
                    textStyle: TextStyle(fontSize: 20)
                  ),
                  onPressed: () {
                    Navigator. pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SecondScreen();
                        }
                        )
                    );
                  },
                  child: const Text('Ajukan beasiswa sekarang'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
