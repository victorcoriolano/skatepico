import 'package:flutter/material.dart';
import 'package:skatepiko/page/pagina.dart';
import 'package:go_router/go_router.dart';

void main() {
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/page/pagina.dart',
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
      ),
    ],
  );
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:  {
        '/page/pagina.dart': (context) => const HomePage(),
      },
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/page/pagina.dart',
      );
  }
}
