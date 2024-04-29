import 'package:flutter/material.dart';

import '../widgets/description_section.dart';
import '../widgets/video_section.dart';
class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img, {super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img,style: const TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1
        ),),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications,size: 28,color: Color(0xFF674AEF),),
          ),
        ],

      ),
      
      body: Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFF5F3FF),
                image: DecorationImage(image: AssetImage("assets/images/${widget.img}.png"))
              ),
              child: Center(
                child: Container(

                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,

                  ),
                  child: const Icon(Icons.play_arrow_rounded,color: Color(0xFF674AEF),size: 45,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Text("${widget.img} Complete Course",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            ),
            const SizedBox(height: 5,),
            Text("Created by Dear Programmer",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7)
            ),
            ),
            const SizedBox(height: 5,),
            Text("55 videos",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5)
              ),
            ),

            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F3FF),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // If isVideoSection is true
                    color: isVideoSection? Color(0xFF674AEF):Color(0xFF674AEF).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection = true;

                        });

                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: const Text("Videos",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideoSection? Color(0xFF674AEF).withOpacity(0.6):Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          isVideoSection = false;
                        });

                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 35),
                        child: const Text("Description",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 10,),
            isVideoSection? VideoSection():DescriptionSection(),
          ],
        ),

      ),
    );
  }
}
