import 'package:educational_app/screen/course_screen.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  // Creating static data in list
  List catNames=[
    "Category",
    "Classes",
    "Free Course",
    "Book Store",
    "Live Course",
    "Leaderboard",

  ];

  List<Color> catColor = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7F7F),
    const Color(0xFFCD84FB),
    const Color(0xFF78E667),

  ];

  List imgList =[
    "Flutter",
    "React Native",
    "Python",
    "C#",

  ];

  List<Icon> catIcon = [
     Icon(Icons.category,size: 30,color: Colors.white,),
     Icon(Icons.video_library,size: 30,color: Colors.white,),
     Icon(Icons.assignment,size: 30,color: Colors.white,),
     Icon(Icons.store,size: 30,color: Colors.white,),
     Icon(Icons.play_circle_fill,size: 30,color: Colors.white,),
     Icon(Icons.emoji_events,size: 30,color: Colors.white,),

  ];

   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10,top: 15,left: 15,right: 15),
            decoration: const BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),

                    Icon(Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),

                  ],
                ),

                const SizedBox(height: 20,),
                const Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text("Hi, Programmer",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white
                  ),
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,

                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),

                      ),

                      prefixIcon: const Icon(Icons.search,
                      size: 25,),
                    ),
                  ),
                ),
                



              ],
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(
              children: [

                GridView.builder(


                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: catNames.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColor[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(child: catIcon[index]),
                        ),
                        const SizedBox(height: 10,),
                        Text(catNames[index],style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6)
                        ),),
                      ],
                    );
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Courses",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600

                    ),),
                    Text("See All",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      color: Color(0xFF674AEF),

                    ),),

                  ],
                ),
                const SizedBox(height: 10,),
                GridView.builder(
                  itemCount: imgList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),

                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseScreen(imgList[index]),));

                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFFF5F3FF),
                        ),
                        child: Column(
                          children: [
                            Padding(padding: const EdgeInsets.all(10),
                              child: Image.asset("assets/images/${imgList[index]}.png",
                              width: 100,
                                height: 100,
                              ),
                            
                            ),
                            const SizedBox(height: 10,),
                            Text(imgList[index],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6),
                            ),
                            ),
                            const SizedBox(height: 10,),
                            
                            Text("55 videos",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5)
                            ),)

                          ],
                        ),
                      ),
                    );
                  },

                ),
              ],
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 32,
          selectedItemColor: Color(0xFF674AEF),
          selectedFontSize: 18,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Course"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wistlist"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
          ],
    ),


    );
  }
}
