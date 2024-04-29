import 'package:flutter/material.dart';
class VideoSection extends StatelessWidget {
  // static data for video list
  List videoList =[
    "Introduction to Flutter",
    "Installing Flutter on Windows",
    "Setup Emulator on windows",
    "Creating our first App",

  ];
   VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: videoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
                shape: BoxShape.circle
              ),
              child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 30,),
            ),
            title: Text(videoList[index]),
            subtitle: Text("20 minute 30 sec"),
          );
        },
    );
  }
}
