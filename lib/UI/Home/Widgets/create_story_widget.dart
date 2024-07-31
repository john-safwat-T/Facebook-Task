import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      child: Image.asset(
                        ImagesAssetsProvider.model1IconPath,
                        fit: BoxFit.cover,
                      ))),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Create Story",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.black),
                ),
              ))
            ],
          ),
          Positioned.fill(child: Column(
            children: [
              const Spacer(flex: 5,),
              Container(
                padding:const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: ColorsProvider.white,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.add_circle_rounded , color: ColorsProvider.blue, size: 36,),
              ),
              const Spacer(flex: 2,)
            ],
          ))
        ],
      ),
    );
  }
}
