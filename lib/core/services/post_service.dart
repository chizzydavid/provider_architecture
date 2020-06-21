import 'package:provider_architecture/core/services/index.dart';
import 'package:provider_architecture/core/models/post_model.dart';

class PostService {
  static Future<dynamic> getPosts() async {
    try {
      var response = await HttpService.get('https://jsonplaceholder.typicode.com/posts');
      List<PostModel> posts = List<PostModel>.from(response.map((post) => PostModel.fromJson(post)).toList());
      return posts;
    } catch(e) {
      return 'Failed to get posts $e';
    }
  }

  addPost() async {
    // create a new post
  }

  deletePost() async {
    // delete a post
  }
}
