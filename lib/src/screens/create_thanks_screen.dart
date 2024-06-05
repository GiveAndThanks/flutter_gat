import 'package:flutter/material.dart';

class CreateThanksScreen extends StatelessWidget {
  final Function(int) onNavigate;

  CreateThanksScreen({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Create Thanks Screen'),
    );
  }
}
