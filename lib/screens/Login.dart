import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limsapp/screens/Report.dart';
import 'package:limsapp/screens/home.dart';
import 'package:limsapp/screens/nfc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _userCtrl = TextEditingController();
  final _psswdCtrl = TextEditingController();

  void _onLogin() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Report()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Шутис Мэдээлэл Холбооны Технологийн сургууль",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Лаборатори бүртгэх систем",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Лаборант нэвтрэх хэсэг",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: _userCtrl,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нэвтрэх нэр хоосон байна";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    label: Text("Нэвтрэх нэр"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.9),
                        width: 1,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  obscureText: true,
                  controller: _psswdCtrl,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нууц үг хоосон байна";
                    }
                  },
                  decoration: InputDecoration(
                    label: Text("Нууц үг"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: _onLogin,
                child: Text(
                  "Нэвтрэх",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
