import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:my_first_flutter_project/screens/home/views/pages.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 164, 218, 201)
                          ),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Color.fromARGB(255, 73, 117, 93)
                          )
                      ],
                    ),
                      const SizedBox(width: 8,),
                      Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children: [
                          Text("Welcome!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.outline
                            ),
                          ),
                          Text("User",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground
                            ),
                          )
                        ],
                      ),
                  ],
                ),
                IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.settings)),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              child:PageView(
                scrollDirection: Axis.horizontal,
                children:[
                  Pages(
                    category: "Total Applications",
                    number: 100,
                    getColor1: Color.fromARGB(255, 79, 98, 184),
                    getColor2: Color.fromARGB(255, 102, 184, 145),
                    getColor3: Color.fromARGB(255, 88, 184, 197),
                  ),
                  Pages(
                    category: "Offered",
                    number: 4,
                    getColor1: Color.fromARGB(255, 93, 141, 89),
                    getColor2: Color.fromARGB(255, 142, 189, 115),
                    getColor3: Color.fromARGB(255, 155, 221, 201),
                  ),
                  Pages(
                    category: "Rejected",
                    number: 96,
                    getColor1: Color.fromARGB(255, 192, 88, 88),
                    getColor2: Color.fromARGB(255, 211, 100, 66),
                    getColor3: Color.fromARGB(255, 209, 192, 93),
                  ),
                  Pages(
                    category: "Interview",
                    number: 10,
                    getColor1: Color.fromARGB(255, 57, 81, 185),
                    getColor2: Color.fromARGB(255, 151, 135, 243),
                    getColor3: Color.fromARGB(255, 174, 150, 231),
                  ),
                ],
              ),
              ),
              /*const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold
                    )
                  )
                ],)*/
        ],
      ),
    ),
    );
  }
}