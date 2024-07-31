import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:facebook_task/UI/Home/Widgets/home_screen_app_bar_icon_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          "Facebook",
          style: TextStyle(
              color: ColorsProvider.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image(
                image: Svg(ImagesAssetsProvider.plushIconPath),
              )),
          IconButton(
              onPressed: () {},
              icon: Image(
                image: Svg(ImagesAssetsProvider.searchIconPath),
              )),
          IconButton(
              onPressed: () {},
              icon: Image(
                image: Svg(ImagesAssetsProvider.messengerIconPath),
              )),
        ],
        bottom:
            PreferredSize(preferredSize: preferredSize, child: Column(
              children: [
                Row(
                  children: [
                    HomeScreenAppBarIconItem(ImagesAssetsProvider.homeIconPath , true),
                    HomeScreenAppBarIconItem(ImagesAssetsProvider.playIconPath , false),
                    HomeScreenAppBarIconItem(ImagesAssetsProvider.storeIconPath , false),
                    HomeScreenAppBarIconItem(ImagesAssetsProvider.profileIconPath , false),
                    HomeScreenAppBarIconItem(ImagesAssetsProvider.notificationsIconPath , false),
                    Expanded(
                        child: SizedBox(
                          height: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 16,
                                backgroundImage: AssetImage(
                                  ImagesAssetsProvider.model1IconPath
                                ),
                              ),
                              Divider(
                                thickness:1,
                                color: ColorsProvider.gray,
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ],

            )));
  }

  @override
  Size get preferredSize => const Size(100, 120);
}
