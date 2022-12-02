import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Center(
              child: Text("splash"),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
