import 'package:provider_architecture/core/services/post_service.dart';
import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:provider_architecture/core/models/post_model.dart';

class PostProvider extends ChangeNotifier {
  List<PostModel> _posts = [];

  int get postCount => _posts.length;
  UnmodifiableListView<PostModel> get posts => UnmodifiableListView(_posts);

  getPosts() async {
    var result = await PostService.getPosts();
    _posts = result;
    notifyListeners();
    return true;
  }
}
