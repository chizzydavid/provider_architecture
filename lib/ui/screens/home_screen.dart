import 'package:flutter/material.dart';
import 'package:provider_architecture/core/models/post_model.dart';
import 'package:provider_architecture/core/providers/post_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen() : super();

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  PostProvider postProvider;

  @override
  Widget build(BuildContext context) {
    postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Display All Posts"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    postProvider.getPosts();
                  },
                  elevation: 0,
                  color: Colors.teal,
                  child: Text('Fetch Posts'),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  postProvider.postCount > 0 
                  ?  Container(
                      height: MediaQuery.of(context).size.height,

                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: postProvider.postCount,
                        itemBuilder: (BuildContext context, int index) {
                          PostModel post =  postProvider.posts[index];
                          return postCard(post);
                        }
                      ),
                  )
                  : Text('No Posts to display', style: TextStyle(fontSize: 20),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


  Widget postCard(PostModel post) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${post.title}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
            ),
            Text(
              '${post.body}',
              style: TextStyle(fontSize: 14)
            ) 
          ]
        )
      )
    );
  }
}
