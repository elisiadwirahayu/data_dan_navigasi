import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_data_dan_navigasi/third_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  String _namaLengkap = "";
  String _ttl = "";
  String _email = "";
  String _nomorTelepon = "";
  String _alamat = "";
  String _universitas = "";
  String _fakultas = "";
  String _jurusan = "";
  String _prodi = "";
  String _semester = "";
  String _ipk = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Pengajuan Beasiswa'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: 12, horizontal: 24
          ),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Form Pengajuan Beasiswa",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                    "Isilah form di bawah ini dengan lengkap!",
                    style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 30),
                _buildForm(),
                SizedBox(height: 24),
                _buildButtonSubmit(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formInput(
      {required String hint,
        required String label,
        required Function(String value) setStateInput,
        int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        contentPadding: const EdgeInsets.all(12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        _formInput(
          hint: "Nama Lengkap:",
          label: "Nama Lengkap *",
          setStateInput: (value) {
            setState((){
              _namaLengkap = value;
            });
          },
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Tempat, Tanggal Lahir:",
          label: "Tempat, Tanggal Lahir *",
          setStateInput: (value) {
            setState((){
              _ttl = value;
            });
          },
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Alamat E-mail:",
          label: "Alamat E-mail *",
          setStateInput: (value) {
            setState((){
              _email = value;
            });
          },
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Nomor Telepon:",
          label: "Nomor Telepon *",
          setStateInput: (value) {
            setState(() {
              _nomorTelepon = value;
            });
          },
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Alamat:",
          label: "Alamat *",
          setStateInput: (value) {
            setState(() {
              _alamat = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Universitas:",
          label: "Universitas *",
          setStateInput: (value) {
            setState(() {
              _universitas = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Fakultas:",
          label: "Fakultas *",
          setStateInput: (value) {
            setState(() {
              _fakultas = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Jurusan:",
          label: "Jurusan *",
          setStateInput: (value) {
            setState(() {
              _jurusan = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Program Studi:",
          label: "Program Studi *",
          setStateInput: (value) {
            setState(() {
              _prodi = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "Semester:",
          label: "Semester *",
          setStateInput: (value) {
            setState(() {
              _semester = value;
            });
          },
          maxLines: 3,
        ),
        SizedBox(height: 12),
        _formInput(
          hint: "IPK:",
          label: "IPK *",
          setStateInput: (value) {
            setState(() {
              _ipk = value;
            });
          },
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildButtonSubmit() {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          if (_namaLengkap == "" || _ttl == "" || _email == "" || _nomorTelepon == "" || _alamat == "" || _universitas == "" || _fakultas == "" || _jurusan == "" || _prodi == "" || _semester == "" || _ipk == "") {
            SnackBar snackBar = SnackBar(
              content: Text("* data tidak boleh kosong"),
            );
            ScaffoldMessenger.of(context)
                .showSnackBar(snackBar);
          } else {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ThirdScreen(
                nama: _namaLengkap,
                ttl: _ttl,
                email: _email,
                noTelp: _nomorTelepon,
                alamat: _alamat,
                universitas: _universitas,
                fakultas: _fakultas,
                jurusan: _jurusan,
                prodi: _prodi,
                semester: _semester,
                ipk: _ipk,
              );
            }));
          }
        },
        child: Text('Kirim Pengajuan'),
        style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(50.0),
            textStyle: TextStyle(fontSize: 20)
        ),
      ),
    );
  }
}
