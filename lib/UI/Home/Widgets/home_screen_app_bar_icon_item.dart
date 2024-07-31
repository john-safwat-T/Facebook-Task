import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenAppBarIconItem extends StatelessWidget {
  final String imagePath;

  final bool selected;

  const HomeScreenAppBarIconItem(this.imagePath, this.selected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
          height: 50,
          child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Image(image: Svg(imagePath)),
          Divider(
            thickness: selected? 3:1,
            color: selected?ColorsProvider.blue:ColorsProvider.gray,
          )
                ],
              ),
        ));
  }
}
