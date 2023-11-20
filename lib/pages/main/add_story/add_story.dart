import 'package:flutter/material.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';

class AddStory extends StatefulWidget {
  const AddStory({Key? key}) : super(key: key);

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  TextEditingController _title = TextEditingController();
  TextEditingController _story = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Story'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                  controller: _title,
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 45,
              ),
              TextField(
                controller: _story,
                decoration: const InputDecoration(
                  labelText: 'Story',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                minLines: 3,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_title.text.isNotEmpty && _story.text.isNotEmpty) {
                      Navigator.pop(
                        context,
                        MyStories(
                            name: _title.text,
                            subs: _story.text,
                            image: 'https://wallpapers.com/images/featured-full/toy-story-28ob0nawfhqctcdo.jpg'),
                      );
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Save'))
            ],
          ),
        ),
      );
}
