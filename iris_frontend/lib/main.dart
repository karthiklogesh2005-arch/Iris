
import 'package:flutter/material.dart';
import 'chat_screen.dart';

void main() {
  runApp(const IrisApp());
}

class IrisApp extends StatelessWidget {
  const IrisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iris',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E2228),
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.dark(
          background: Color(0xFF1E2228),
          surface: Color(0xFF242933),
          primary: Color(0xFF66D9E8),
        ),
      ),
      home: const ChatScreen(),
    );
  }
}
