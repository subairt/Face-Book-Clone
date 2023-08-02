import 'package:flutter/material.dart';
import 'package:ui_3/assets.dart';
import 'package:ui_3/widgets/avatar.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Avatar(displayImage: abu,displayStatus: false),
    title: const TextField(
      decoration: InputDecoration(
        hintText: "What's on your mind?",
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder : InputBorder.none,
        disabledBorder: InputBorder.none,
      ),
    ),
    );

  }
}
