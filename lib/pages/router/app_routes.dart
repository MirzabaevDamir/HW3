import 'package:flutter/material.dart';
import 'package:my_project/pages/main/add_story/add_story.dart';
import 'package:my_project/pages/main/detail_page/detail_page.dart';
import 'package:my_project/pages/main/edit_profile/edit_profile_page.dart';
import 'package:my_project/pages/main/main_page.dart';
import 'package:my_project/pages/main/profile/profile_page.dart';

part 'name_routes.dart';

final class AppRoutes {
  AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => EditProfilePage(
            name: settings.arguments as String,
          ),
        );
      case Routes.addStory:
        return MaterialPageRoute(
          builder: (_) => const AddStory(),
        );
        case Routes.detailPage:
        return MaterialPageRoute(
          builder: (_) => DetailPage(myStories: settings.arguments as MyStories),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => const SizedBox(
                  child: Text('Nothing'),
                ));
    }
  }
}
