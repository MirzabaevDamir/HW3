import 'package:flutter/material.dart';
import 'package:my_project/pages/main/home/widgets/my_story_widget.dart';
import 'package:my_project/pages/main/main_page.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {},
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          MyStoryWidget(
            onTap: () {
              navigate(
                MyStories(
                  name: 'Always Say less Than Necessary',
                  subs: '4 days ago  •  6 min read',
                  image: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg',
                ),
                context,
              );
            },
            title: 'Always Say less Than Necessary',
            subTitle: '4 days ago  •  6 min read',
            imageSrc: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          MyStoryWidget(
            onTap: () {
              navigate(
                MyStories(
                 name: 'Always Say less Than Necessary',
                  subs: '4 days ago  •  6 min read',
                  image: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg'
                ),
                context,
              );
            },
            title: 'Always Say less Than Necessary',
            subTitle: '4 days ago  •  6 min read',
            imageSrc: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          MyStoryWidget(
            onTap: () {
              navigate(
                MyStories(
                 name: 'Always Say less Than Necessary',
                  subs: '4 days ago  •  6 min read',
                  image: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg'
                ),
                context,
              );
            },
            title: 'Always Say less Than Necessary',
            subTitle: '4 days ago  •  6 min read',
            imageSrc: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          MyStoryWidget(
            onTap: () {
              navigate(
                MyStories(
                 name: 'Always Say less Than Necessary',
                  subs: '4 days ago  •  6 min read',
                  image: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg'
                ),
                context,
              );
            },
            title: 'Always Say less Than Necessary',
            subTitle: '4 days ago  •  6 min read',
            imageSrc: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg',
          ),
        ],
      ),
    );
  }
}
