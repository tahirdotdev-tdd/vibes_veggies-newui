import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vibes_veggies/auth/login_or_register.dart';
import 'package:vibes_veggies/themes/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(), //const RegisterPage(),
      // LoginPage(emailHintText: '', passwordHintText: '', obscureText: false,onTap: (){} ,),
      theme: Provider.of<ThemeProvider>(context).themeData,
    ); // Missing semicolon fixed here
  }
}
