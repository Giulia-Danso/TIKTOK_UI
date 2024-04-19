import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;
  const PostTemplate({
    required this.username,
    required this.videoDescription,
    required this.numberOfComments,
    required this.numberOfLikes,
    required this.numberOfShares,
    required this.userPost,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // user post (at the very back)
          userPost,

          //user name and caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@' + username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: videoDescription,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const TextSpan(
                          text: '#fyp #flutter',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    icon: const Icon(
                      Icons.favorite,
                    ),
                    number: numberOfLikes,
                  ),
                  MyButton(
                    icon: const Icon(
                      Icons.chat_bubble_outlined,
                    ),
                    number: numberOfComments,
                  ),
                  MyButton(
                    icon: const Icon(
                      Icons.send,
                    ),
                    number: numberOfShares,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
