import 'package:flutter/material.dart';

class DisplayQrScreen extends StatelessWidget {
  final Function(int) onNavigate;

  DisplayQrScreen({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Display QR Screen'),
    );
  }
}