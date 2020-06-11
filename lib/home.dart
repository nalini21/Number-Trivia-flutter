import 'package:Number_trivia/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2340, allowFontScaling: false);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250.h,
              width: 500.w,
              child: TextField(
                onChanged: (text) {
                  number = int.parse(text);
                },
                decoration: InputDecoration(
                    hintText: 'Enter an Integer',
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.green[400], width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 5.0),
                    )),
              ),
            ),
            RaisedButton(
                color: Colors.blue,
                child: Text('Enter'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loading(number,0)));
                }),
            SizedBox(height: 50.h),
            RaisedButton(
                color: Colors.greenAccent,
                child: Text('Random Trivia'),
                onPressed: () {
                  Random random = new Random();
                  int randomNumber = random.nextInt(2000);
                  Random random2 = new Random();
                  int randomNumber2 = random2.nextInt(randomNumber);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loading(randomNumber2+1,1)));
                }),
          ],
        ),
      ),
    );
  }
}
