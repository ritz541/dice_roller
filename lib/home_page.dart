import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final void Function() toggleMode;
  final bool isDark;

  const HomePage({required this.isDark, required this.toggleMode, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Switch Mode',
            onPressed: toggleMode,
            icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
          ),
        ],
      ),
      body: Center(child: DiceRoller()),
    );
  }
}
