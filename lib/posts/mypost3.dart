import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok_ui/util/button.dart';
import 'package:tiktok_ui/util/post_Template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'winnie',
      videoDescription: 'come with me to a concert',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.yellow[100],
      ),
    );
  }
}
