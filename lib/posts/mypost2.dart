import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/post_Template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'cricri',
      videoDescription: 'my day in 24 sec',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfFavorite: '233',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.pink[100],
      ),
    );
  }
}
