import 'package:flutter/material.dart';
import 'package:my_project/pages/main/home/widgets/my_story_widget.dart';
import 'package:my_project/pages/main/main_page.dart';
import 'package:my_project/pages/router/app_routes.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<MyStories> myStories = [];
  String name = 'Damir Mirzabaev';

  @override
  initState() {
    super.initState();
    setState(() {});
    myStories.addAll([
      MyStories(
        name: 'My Story',
        subs: 'My Story',
        image: 'https://xsgames.co/randomusers/assets/avatars/pixel/15.jpg',
      ),
      MyStories(
        name: 'My Story',
        subs: 'My Story',
        image: 'https://xsgames.co/randomusers/assets/avatars/pixel/16.jpg',
      ),
      MyStories(
        name: 'My Story',
        subs: 'My Story',
        image: 'https://xsgames.co/randomusers/assets/avatars/pixel/17.jpg',
      ),
      MyStories(
        name: 'My Story',
        subs: 'My Story',
        image: 'https://xsgames.co/randomusers/assets/avatars/pixel/18.jpg',
      ),
      MyStories(
        name: 'My Story',
        subs: 'My Story',
        image: 'https://xsgames.co/randomusers/assets/avatars/pixel/19.jpg',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.addStory).then((value) {
            if (value != null) {
              setState(() {
                myStories.add(value as MyStories);
              });
            }
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text('Profile')),
      body: Column(
        children: [
          ListTile(
            leading: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                'https://xsgames.co/randomusers/assets/avatars/pixel/20.jpg',
                fit: BoxFit.fill,
              ),
            ),
            title: Text(name),
            subtitle: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.pushNamed(context, Routes.editProfile, arguments: name).then((value) {
                  if (value != null) {
                    setState(() {
                      name = value as String;
                    });
                  }
                });
              },
              child: const Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                final data = myStories[index];
                return MyStoryWidget(
                  title: data.name,
                  subTitle: data.subs,
                  imageSrc: data.image,
                  onTap: () {
                    navigate(
                      MyStories(
                        name: data.name,
                        subs: data.subs,
                        image: data.image,
                      ),
                      context,
                    );
                  },
                );
              },
              separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 12),
              itemCount: myStories.length,
            ),
          ),
        ],
      ),
    );
  }
}

class MyStories {
  final String name;
  final String subs;
  final String image;

  MyStories({
    required this.name,
    required this.subs,
    required this.image,
  });
}
