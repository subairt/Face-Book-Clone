import 'package:flutter/material.dart';
import 'package:ui_3/assets.dart';
import 'package:ui_3/widgets/storyCard.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add To Story",
            avatar: abu,
            story: abu,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Bilaal",
            avatar: bilaal,
            story: dff,
            displayBorder: true,
          ),
            StoryCard(
            labelText: "maanu",
            avatar: foto,
            story: electr,
            displayBorder: true,
          ),
            StoryCard(
            labelText: "chako",
            avatar: gfh,
            story: fff1,
            displayBorder: true,
          ),
            StoryCard(
            labelText: "subair",
            avatar: itsme,
            story: bike,
             displayBorder: true,
          ),
            StoryCard(
            labelText: "jishnu",
            avatar: jishnu,
            story: ipln,
             displayBorder: true,
          ),
            StoryCard(
            labelText: "vinoj",
            avatar: vinoj,
            story: womans,
             displayBorder: true,
          ),
        ],
      ),
    );
  }
}
