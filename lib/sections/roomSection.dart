import 'package:flutter/material.dart';
import 'package:ui_3/assets.dart';
import 'package:ui_3/widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.only(left: 0,right: 13),
            child: OutlinedButton.icon(
              // shape:const StadiumBorder(),
              icon: const Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: const Text(
                'Create \nRoom',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onPressed: () {
                print("Create a chat room!");
              },
              // borderSide:const BorderSide(
              // color: Colors.blue,
              // width: 2,
            ),
          ),
          Avatar(displayImage: abu,displayStatus: true,),
          Avatar(displayImage: jishnu,displayStatus: true,),
          Avatar(displayImage: mukthar,displayStatus: true,),
          Avatar(displayImage: vinoj,displayStatus: true,),
          Avatar(displayImage: itsme,displayStatus: true,),
          Avatar(displayImage: jayasurya,displayStatus: true,),
          Avatar(displayImage: gfh,displayStatus: true,),
          Avatar(displayImage: foto,displayStatus: true,),
          Avatar(displayImage: bilaal,displayStatus: true,),
          
        ],
      ),
    );
  }
}
