import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  final Function(int) onNavigate;
  final int selectedIndex;

  CustomBottomAppBar({required this.onNavigate, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final List<Widget> actionsForScreens = [
      // HomeBottomAppBar
      Row(
        children: <Widget>[
          IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onSurfaceVariant),
            child: Row(
              children: <Widget>[
                IconButton(
                  tooltip: 'public',
                  icon: const Icon(Icons.public),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'private',
                  icon: const Icon(Icons.people),
                  onPressed: () {},
                ),
                IconButton(
                  tooltip: 'qr code',
                  icon: const Icon(Icons.qr_code_2),
                  onPressed: () => onNavigate(1),
                ),
                IconButton(
                  tooltip: 'settings',
                  icon: const Icon(Icons.settings),
                  onPressed: () => onNavigate(2),
                ),
              ],
            ),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () => onNavigate(3),
            tooltip: 'Create Thanks',
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      // QRCodeBottomAppBar
      Row(
        children: <Widget>[
          IconButton(
            tooltip: 'back to home',
            icon: const Icon(Icons.arrow_back),
            onPressed: () => onNavigate(0),
          ),
        ],
      ),
      // SettingsBottomAppBar
      Row(
        children: <Widget>[
          IconButton(
            tooltip: 'back to home',
            icon: const Icon(Icons.arrow_back),
            onPressed: () => onNavigate(0),
          ),
        ],
      ),
      // CreateThanksBottomAppBar
      Row(
        children: <Widget>[
          IconButton(
            tooltip: 'back to home',
            icon: const Icon(Icons.arrow_back),
            onPressed: () => onNavigate(0),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'confirm',
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: IconTheme(
              data: IconThemeData(color: Theme.of(context).colorScheme.onSecondary),
              child: const Icon(Icons.send),
            ),
          ),
        ],
      ),
    ];

    return BottomAppBar(
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: actionsForScreens[selectedIndex],
    );
  }
}