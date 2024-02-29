import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class Pages extends StatelessWidget {
  final String category;
  final int number;
  final dynamic getColor1;
  final dynamic getColor2;
  final dynamic getColor3;

  const Pages({
    super.key,
    required this.category,
    required this.number,
    required this.getColor1,
    required this.getColor2,
    required this.getColor3,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    getColor1, getColor2, getColor3
                    ],
                  transform: const GradientRotation(math.pi / 4),
                  ),
                borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(category,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                        fontWeight: FontWeight.w600
                        )
                      ),
                    Text(number.toString(),
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          )
                        ),
                    ],
                    ),
                  ),
    );
  }
}