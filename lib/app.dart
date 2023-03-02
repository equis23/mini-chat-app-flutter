import 'package:flutter/material.dart';
import 'package:mini_chat/config/themes/app_theme.dart';
import 'package:mini_chat/presentation/screens/chat/chat_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mini chat',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: AppTheme(selectedColor: 0).theme(),
      routes: {
        'home': (context) => const ChatScreen(),
      },
    );
  }
}
