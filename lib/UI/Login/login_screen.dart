import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:facebook_task/UI/Home/home_screen.dart';
import 'package:facebook_task/UI/Login/Widgets/facebook_logo.dart';
import 'package:facebook_task/UI/Login/Widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "Login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const FacebookLogo(),
            InputForm(_formKey, emailValidation, visible, changeVisibility),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {onLoginPress();},
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login"),
                    ],
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forgotten Password ?",
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.transparent),
                    foregroundColor:
                        WidgetStateProperty.all(ColorsProvider.blue),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side:
                            BorderSide(width: 2, color: ColorsProvider.blue)))),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create Account"),
                    ],
                  ),
                )),
            Image(image: Svg(ImagesAssetsProvider.metaLogoPath))
          ],
        ),
      ),
    );
  }

  String? emailValidation(String? email) {
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email ?? "");
    if (emailValid) {
      return null;
    } else {
      return "Invalid Email";
    }
  }

  changeVisibility() {
    visible = !visible;
    setState(() {});
  }

  onLoginPress(){
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    }
  }
}
