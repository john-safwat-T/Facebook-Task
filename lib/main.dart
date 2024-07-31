import 'package:facebook_task/Core/Theme/application_theme.dart';
import 'package:facebook_task/UI/Home/home_screen.dart';
import 'package:facebook_task/UI/Login/login_screen.dart';
import 'package:facebook_task/UI/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main (){

  runApp(const MyApp());

}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.appTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName :(_) => const SplashScreen(),
        LoginScreen.routeName :(_)=> const LoginScreen(),
        HomeScreen.routeName :(_)=> HomeScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}