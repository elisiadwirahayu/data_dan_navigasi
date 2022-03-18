import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_data_dan_navigasi/main_screen.dart';

class ThirdScreen extends StatelessWidget {
  final String nama;
  final String ttl;
  final String email;
  final String noTelp;
  final String alamat;
  final String universitas;
  final String fakultas;
  final String jurusan;
  final String prodi;
  final String semester;
  final String ipk;

  const ThirdScreen({
    Key? key,
    required this.nama,
    required this.ttl,
    required this.email,
    required this.noTelp,
    required this.alamat,
    required this.universitas,
    required this.fakultas,
    required this.jurusan,
    required this.prodi,
    required this.semester,
    required this.ipk,
  }) : super(key: key);

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pengajuan Beasiswa Berhasil"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 12, horizontal: 24,
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( "Selamat!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text( "Pengajuan beasiswa telah berhasil.",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Mohon periksa kembali data yang diajukan.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Nama :" + nama,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Tempat, Tanggal Lahir :" + ttl,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "E-mail :" + email,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Nomor Telepon :" + noTelp,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Alamat :" + alamat,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Universitas :" + universitas,
                  style: TextStyle(
                      fontSize: 16),
                ),
                SizedBox(height: 15),
                Text(
                  "Fakultas :" + fakultas,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Jurusan :" + jurusan,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Program Studi :" + prodi,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Semester :" + semester,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "IPK :" + ipk,
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Perbaiki'),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 25,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder:(context) {
                            return MainScreen();
                          }),
                              (route) => false,
                        );
                      },
                      child: Text("Selesai"),
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        ),
      ),
    );
  }
}