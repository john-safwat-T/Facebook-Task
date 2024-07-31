import 'package:facebook_task/Core/Utils/images_assets_provider.dart';
import 'package:facebook_task/Models/Post.dart';
import 'package:facebook_task/UI/Home/Widgets/create_new_post_widget.dart';
import 'package:facebook_task/UI/Home/Widgets/home_screen_app_bar.dart';
import 'package:facebook_task/UI/Home/Widgets/post_widget.dart';
import 'package:facebook_task/UI/Home/Widgets/stories_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";
  HomeScreen({super.key});

  final List<Post> posts = Post.generatePostsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(),
      body: ListView.builder(
        itemCount: posts.length+2,
        itemBuilder: (context, index) {
          if(index == 0){
            return const CreateNewPostWidget();
          }else if (index == 1){
            return StoriesList();
          }else{
            return PostWidget(posts[index-2]);
          }
        },
      ),
    );
  }
}
