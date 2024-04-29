import 'package:flutter/material.dart';
class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Flutter is very use full Framework. Using Flutter code convert it's code into Javascript",style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7),

          ),
          textAlign: TextAlign.justify,),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Text("Course length: ",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),
              Icon(Icons.timer,color: Color(0xFF674AEF),),
              SizedBox(height: 10,),
              Text("26 hours",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),),
            ],
          ),
          const SizedBox(height: 10,),
          const Row(
            children: [
              Text("Rating: ",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),

              Icon(Icons.star,color: Colors.amber,),
              SizedBox(height: 10,),
              Text("4.5",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),),
            ],
          ),
        ],
      )
    );
  }
}