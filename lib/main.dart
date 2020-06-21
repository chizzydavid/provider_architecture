import 'package:flutter/material.dart';
import 'package:provider_architecture/ui/router.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture/core/providers/post_provider.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostProvider>(
          create: (context) => new PostProvider()),
        ], child: MyApp()
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'home',
      onGenerateRoute: Router.generateRoute,
    );
  }
}


