import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:limsapp/screens/Report.dart';
import 'package:limsapp/screens/nfc.dart';
import 'package:limsapp/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  List<Widget> _totalPage = [NFC(), Report(), Profile()];
  void setCurrentindex(int val) {
    setState(() {
      _currentindex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _totalPage[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: setCurrentindex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.nfc), label: "Төхөөрөмж бүртгэл"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Тайлан"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профайл"),
        ],
      ),
    );
  }
}
