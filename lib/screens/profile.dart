import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:limsapp/screens/Login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _islogged = false;
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}
