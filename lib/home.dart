import 'package:Number_trivia/getTrivia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number;
  String data;
  
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
                  //print('$number');
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
                    )
                   
                    ),
                   
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('Enter'),
              onPressed: () {
              setState(() async{
                print('$number');
                Trivia trivia = Trivia(number);
                await trivia.getData();
                data=trivia.data;               
              });
            }),
           
          ],
        ),
      ),
    );
  }
}
