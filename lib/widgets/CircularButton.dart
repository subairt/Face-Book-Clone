

import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final iconColor;

 const CircularButton({
    required this.buttonIcon,
    required this.buttonAction, 
    this.iconColor =Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 199, 198, 198),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color:iconColor,
          size: 25,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
