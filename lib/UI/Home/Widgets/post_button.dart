import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PostButton extends StatelessWidget {
  final String image;
  final String title;

  const PostButton(this.image, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image
        ),
        const SizedBox(width: 8,),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: ColorsProvider.black),
        )
      ],
    ));
  }
}
