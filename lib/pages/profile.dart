import 'package:flutter/material.dart';
import 'package:tiktok_ui/util/profiletab_1.dart';
import 'package:tiktok_ui/util/profiletab_2.dart';
import 'package:tiktok_ui/util/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Empress Giulia ',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
                image: const DecorationImage(
                  image: AssetImage('lib/assets/selfie.jpeg'),
                ),
              ),
            ),

            //username
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                '@empressgiulia',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),

            //number of following, followers likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: const Column(
                      children: [
                        Text(
                          '37',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: const Column(
                      children: [
                        Text(
                          '8',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      children: [
                        Text(
                          '56',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Likes ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //buttons -> edit profile, insta links, bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                    //  image: DecorationImage(image: )
                  ),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            //bio
            Text(
              'bio here',
              style: TextStyle(color: Colors.grey[700]),
            ),
            // default tab controller
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock, color: Colors.black),
                ),
              ],
            ),

            const Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
