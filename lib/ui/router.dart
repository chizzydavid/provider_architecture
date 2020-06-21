import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider_architecture/ui/screens/home_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      // case 'all_posts':
      //   return MaterialPageRoute(builder: (_) => AllPostScreen());
      // case 'view_post':
      //   var post = settings.arguments as Post;
      //   return MaterialPageRoute(builder: (_) => ViewPostScreen(post: post));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          )
        );
    }
  }
}
