import 'package:flutter/material.dart';
import 'package:s2q2_website/constants.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});

  @override
  Widget build(BuildContext context) {
    Row myRow(String text, String image) {
      return Row(
        children: [
          CircleAvatar(
            radius: 3.5,
            backgroundColor: Colors.black,
          ),
          SizedBox(width: 20),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Image.asset(
              image,
              width: 100,
            ),
          ),
        ],
      );
    }

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: newColor,
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              border: Border.all(
                color: primaryColor,
                width: 3,
              ),
            ),
            child: Text(
              'Tech Stack',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myRow('Software Consultants', 'assets/images/sC.png'),
                  SizedBox(height: 60),
                  myRow('UIUX', 'assets/images/sC.png'),
                  SizedBox(height: 60),
                  myRow('Developers', 'assets/images/sC.png'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60),
                  myRow('Business Analyst', 'assets/images/sC.png'),
                  SizedBox(height: 60),
                  myRow('Sales and Marketing', 'assets/images/sC.png'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
