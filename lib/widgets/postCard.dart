import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ui_3/assets.dart';

import 'package:ui_3/widgets/avatar.dart';
import 'package:ui_3/widgets/blueTick.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHolder(),
          titleSection(),
          imagesection(),
          footerSection(),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                const SizedBox(width: 5),
                displayText(label: 'Comments'),
                const SizedBox(width: 10),
                displayText(label: shareCount),
                const SizedBox(width: 5),
                displayText(label: 'Shares'),
                const SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? " " : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imagesection() {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget postCardHolder() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(
            width: 10,
          ),
          showBlueTick ? const BlueTick() : const SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? " " : publishedAt),
          const SizedBox(width: 30),
          const Icon(
            Icons.public,
            color: Color.fromARGB(255, 66, 66, 66),
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          stdout.write('open more pages');
        },
        icon: const Icon(Icons.more_horiz),
        color: const Color.fromARGB(255, 53, 52, 52),
      ),
    );
  }
}
