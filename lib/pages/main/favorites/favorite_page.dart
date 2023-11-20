import 'package:flutter/material.dart';
import 'package:my_project/pages/main/favorites/widgets/reading_history.dart';
import 'package:my_project/pages/main/favorites/widgets/saved_stories.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: const Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
            )),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child: TabBar(
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.save_alt_outlined,
                            color: Colors.black,
                          ),
                          child: Text(
                            'Saved stories',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.save_alt_outlined,
                            color: Colors.black,
                          ),
                          child: Text(
                            'Reading history',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 3,
                    height: 10,
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SavedStories(),
                        ReadingHistory(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
