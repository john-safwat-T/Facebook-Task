import 'package:facebook_task/Core/Utils/colors_provider.dart';
import 'package:facebook_task/Models/Story.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  final Story story;

  const StoryWidget(this.story, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
              child: Image.asset(
            story.storyImage,
            height: double.infinity,
            fit: BoxFit.cover,
          )),
          Positioned(
            top: 8,
              left: 8,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2 , color: ColorsProvider.blue)
                ),
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(story.userImage),
                ),
              )
          )
        ],
      ),
    );
  }
}
