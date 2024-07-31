import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class FacebookLogo extends StatelessWidget {
  const FacebookLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      child: Image(image: Svg(ImagesAssetsProvider.facebookLogoPath)),
    );
  }
}
