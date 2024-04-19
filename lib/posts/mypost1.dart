import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiktok_ui/util/button.dart';
import 'package:tiktok_ui/util/post_Template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'empressgiulia',
      videoDescription: 'tiktok ui tutorial',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '122',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}
