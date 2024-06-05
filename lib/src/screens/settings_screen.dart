import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Function(int) onNavigate;

  SettingsScreen({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Screen'),
    );
  }
}
