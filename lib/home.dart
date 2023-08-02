import 'package:flutter/material.dart';
import 'package:ui_3/assets.dart';
import 'package:ui_3/sections/headerButtonSection.dart';
import 'package:ui_3/sections/statusSection.dart';
import 'package:ui_3/sections/storySection.dart';
import 'package:ui_3/widgets/CircularButton.dart';
import 'package:ui_3/sections/roomSection.dart';
import 'package:ui_3/widgets/postCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );

    Widget thikDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Search Screen appears!');
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('Messenger appears!');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            const StatusSection(),
            thinDivider,
            const HeaderButtonSection(),
            thikDivider,
            const RoomSection(),
            thikDivider,
            const StorySection(),
            thikDivider,
            PostCard(
              avatar: jishnu,
              name: 'Jishnu priyan',
              publishedAt: '5h',
              postImage: bike,
              postTitle: 'Pulsor 220',
              showBlueTick: true,
              likeCount: '10k',
              commentCount: '5k',
              shareCount: '3k',

            ),
          ],
        ),
      ),
    );
  }
}
