import 'package:flutter/material.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.myStories,
  }) : super(key: key);
  final MyStories myStories;

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.favorite),
        ),
        appBar: AppBar(
          title: const Text('Detail Page'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
                width: double.maxFinite,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    myStories.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                myStories.name,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              ElevatedButton(onPressed: (){}, child: const Text('More Info')),
            ],
          ),
        ),
      );
}
