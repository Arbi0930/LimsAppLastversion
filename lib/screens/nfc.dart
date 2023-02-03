import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NFC extends StatefulWidget {
  const NFC({super.key});

  @override
  State<NFC> createState() => _NFCState();
}

class _NFCState extends State<NFC> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Төхөөрөмж шалгах"),
    );
  }
}
