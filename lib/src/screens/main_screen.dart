import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'display_qr_screen.dart';
import 'settings_screen.dart';
import 'create_thanks_screen.dart';
import '../widgets/custom_bottom_app_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    // 配列の順番がページに対応する番号であり、CustomBottomAppBarのindexとも対応している
    _pages = [
      HomeScreen(onNavigate: _navigateTo),
      DisplayQrScreen(onNavigate: _navigateTo),
      SettingsScreen(onNavigate: _navigateTo),
      CreateThanksScreen(onNavigate: _navigateTo),
    ];
  }

  final List<String> _titles = [
    'Home',
    'Display QR',
    'Settings',
    'Create Thanks',
  ];

  void _navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles[_selectedIndex]),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: CustomBottomAppBar(
        onNavigate: _navigateTo,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
