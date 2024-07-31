import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {

  final GlobalKey<FormState> formKey;
  final Function emailValidation;
  final bool visible;
  final Function changeVisibility;
  const InputForm(this.formKey, this.emailValidation , this.visible , this.changeVisibility,{super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) => emailValidation(value),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorsProvider.black),
            cursorColor: ColorsProvider.black,
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(20),
                hintText: "Mobile Number or Email address"),
          ),
          const SizedBox(height: 24),
          TextFormField(
            obscureText: !visible,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorsProvider.black),
            cursorColor: ColorsProvider.black,
            decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: (){
                    changeVisibility();
                  },
                  child: Icon(
                      visible? Icons.visibility: Icons.visibility_off
                  ),
                ),
                contentPadding:const EdgeInsets.all(20),
                hintText: "Password"),
          )
        ],
      ),
    );
  }
}
