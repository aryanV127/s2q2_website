import 'package:flutter/material.dart';

import '../constants.dart';

class Careers extends StatelessWidget {
  const Careers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              'Careers',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 40),
          Text(
            'We are a group of focused, dedicated and proficient developers who convert\n'
            'needs into solutions. If you think you have the same view,share your\n'
            'details here',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 50),
          MaterialButton(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            onPressed: () {},
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Text(
                "Apply",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
