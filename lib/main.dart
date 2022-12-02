import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_skeleton/providers/user.dart';
import 'package:flutter_skeleton/screens/auth.dart';
import 'package:flutter_skeleton/screens/home.dart';
import 'package:flutter_skeleton/screens/splash.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserProvider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: FutureBuilder(
          future: () {
            return null;
          }(),
          builder: (BuildContext context, AsyncSnapshot<Object?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return const SplashScreen();
              case ConnectionState.done:
              default:
                return const HomeScreen();
            }
          },
        ),
        routes: {
          '/home': (context) => const HomeScreen(),
          '/auth': (context) => const AuthScreen(),
        },
      ),
    );
  }
}
