
import 'package:flutter/material.dart';

class Post {
  final String username;
  final String userImage;
  final String postImage;
  final String description;
  final int likes;
  final int comments;

  Post({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.description,
    required this.likes,
    required this.comments,
  });
}

class PostWidget extends StatelessWidget {
  final Post post;

  PostWidget({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(post.userImage),
            ),
            title: Text(post.username),
            trailing: Icon(Icons.more_vert),
          ),
          Image.asset(post.postImage),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 8.0),
                Text('${post.likes} likes'),
                SizedBox(width: 16.0),
                Icon(Icons.comment),
                SizedBox(width: 8.0),
                Text('${post.comments} comments'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              post.description,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}