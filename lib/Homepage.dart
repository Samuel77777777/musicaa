import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sl_music/theme/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            child: Text(
              "Change Theme",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
