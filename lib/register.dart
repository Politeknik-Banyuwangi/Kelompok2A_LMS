import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import './halaman_utama.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  bool visibilityPass = false;
  String myUser = "admin";
  String myPass = "12345";
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue, Colors.yellow])),
        child: Card(
          elevation: 10,
          shadowColor: Colors.red,
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/logo.jpg'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      controller: cUser,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Username',
                          hintText: 'Input Username Anda'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: cPass,
                      obscureText: !visibilityPass,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0)),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  visibilityPass = !visibilityPass;
                                });
                              },
                              icon: visibilityPass
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                          labelText: 'Password',
                          hintText: 'Input Password Anda'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          CekLogin(context);
                        },
                        child: Text('Register')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void CekLogin(BuildContext context) {
    //final String myUser = 'admin';
    //final String myPass = '12345';

    if (cUser.text == myUser && cPass.text == myPass) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HalamanUtama()));
    } else if (cUser.text.isEmpty || cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Harus Diisi'),
          backgroundColor: Colors.black,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Anda Salah'),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
}
