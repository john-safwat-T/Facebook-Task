import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:facebook_task/Models/Post.dart';
import 'package:facebook_task/UI/Home/Widgets/post_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundImage: AssetImage(post.userImage),
              ),
              const SizedBox(width: 8,),
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.userName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: ColorsProvider.black),
                  ),
                  Row(
                    children: [
                      Text(
                        post.createTime,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium),
                      const SizedBox(width: 8,),
                      Icon(Icons.public_sharp ,color: ColorsProvider.gray, size: 16,)
                    ],
                  )
                ],
              )),
              Icon(
                Icons.more_horiz,
                color: ColorsProvider.black,
              )
            ],
          ),
        ),
        const SizedBox(height: 16,),
        Image.asset(post.image),
        const SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image( image: Svg(ImagesAssetsProvider.reactsIconPath)),
              Text(post.likesCount.toString()),
              const Spacer(),
              Text("${post.commentsCount}Comment"),
            ],
          ),
        ),
        Divider(color: ColorsProvider.gray,),
        Row(
          children: [
            PostButton(ImagesAssetsProvider.likesIconPath, "Like"),
            PostButton(ImagesAssetsProvider.commentsIconPath, "Comment"),
            PostButton(ImagesAssetsProvider.shareIconPath, "Share"),
          ],
        ),
        Divider(color: ColorsProvider.gray,),

      ],
    );
  }
}

