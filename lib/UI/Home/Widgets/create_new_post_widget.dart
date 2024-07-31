import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CreateNewPostWidget extends StatelessWidget {
  const CreateNewPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0 ,vertical:20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(ImagesAssetsProvider.model1IconPath),
          ),
          const SizedBox(width: 8,),
          Text("What’s in Your Mind?" , style: Theme.of(context).textTheme.bodyLarge,),
          const Spacer(),
          Image(image: Svg(ImagesAssetsProvider.imagesIconPath))
        ],
      ),
    );
  }
}
