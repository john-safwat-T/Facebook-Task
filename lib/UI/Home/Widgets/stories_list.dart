import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Models/Story.dart';
import 'package:facebook_task/UI/Home/Widgets/create_story_widget.dart';
import 'package:facebook_task/UI/Home/Widgets/story_widget.dart';
import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  StoriesList({super.key});

  late List<Story> stories = Story.generateStories();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 2),
      color: ColorsProvider.gray,
      height: 220,
      child: Container(
        color: Colors.white,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 8,),
          itemCount: stories.length+1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const CreateStoryWidget();
            } else {
              return StoryWidget(stories[index-1]);
            }
          },
        ),
      ),
    );
  }
}
