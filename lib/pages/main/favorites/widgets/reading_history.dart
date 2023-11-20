import 'package:flutter/material.dart';
import 'package:my_project/pages/main/home/widgets/my_story_widget.dart';
import 'package:my_project/pages/main/main_page.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';

class ReadingHistory extends StatelessWidget {
  const ReadingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyStoryWidget(
          onTap: () {
            navigate(
              MyStories(
                name: 'My Story',
                subs: 'My Story',
                image: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
              ),
              context,
            );
          },
          title: 'My Story',
          subTitle: 'My Story',
          imageSrc: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
        ),
        const SizedBox(
          height: 10,
        ),
        MyStoryWidget(
          onTap: () {
            navigate(
              MyStories(
                name: 'My Story',
                subs: 'My Story',
                image: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
              ),
              context,
            );
          },
          title: 'My Story',
          subTitle: 'My Story',
          imageSrc: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
        ),
        const SizedBox(
          height: 10,
        ),
        MyStoryWidget(
          onTap: () {
            navigate(
              MyStories(
                name: 'My Story',
                subs: 'My Story',
                image: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
              ),
              context,
            );
          },
          title: 'My Story',
          subTitle: 'My Story',
          imageSrc: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
        ),
        const SizedBox(
          height: 10,
        ),
        MyStoryWidget(
          onTap: () {
            navigate(
              MyStories(
                name: 'My Story',
                subs: 'My Story',
                image: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
              ),
              context,
            );
          },
          title: 'My Story',
          subTitle: 'My Story',
          imageSrc: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
        ),
        const Expanded(
          child: SizedBox(),
        ),
        ElevatedButton(onPressed: () {}, child: const Text('More ...')),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
