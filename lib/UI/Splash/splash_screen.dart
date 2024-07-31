import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:facebook_task/UI/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    gotToLoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image(
              width: 100,
              height: 100,
              image: Svg(ImagesAssetsProvider.facebookLogoPath),
            ),
            const Spacer(),
            Text(
              "From",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Image(
              width: 100,
              height: 40,
              image: Svg(ImagesAssetsProvider.metaLogoPath),
            )
          ],
        ),
      ),
    );
  }

  gotToLoginScreen()async{
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) {
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      },
    );
  }
}
