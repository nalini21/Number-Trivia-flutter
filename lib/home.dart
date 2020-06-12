import 'package:Number_trivia/loading.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number;
  String status;
  @override
  void initState() {
    super.initState();
    status = "idle";
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2340, allowFontScaling: false);
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: SizedBox(
                    height: 1500.h,
                    child: FlareActor(
                      "assets/Guss1.flr",
                      animation: "$status",
                    )),
              ),
            ),
            Center(
              child: Container(
                //padding: EdgeInsets.fromLTRB(150.w, 800.h, 150.w, 0),
                child: SizedBox(
                  height: 250.h,
                  width: 400.w,
                  child: TextField(
                    onChanged: (text) {
                     
                      number = int.parse(text);
                     
                        setState(() {
                          status = "cover_eyes_in";
                          //await Future.delayed(const Duration(seconds: 5));
                          //status = "cover_eyes_out";
                        });
                      },
                  
                    decoration: InputDecoration(
                      focusColor: Colors.teal,
                      hoverColor: Colors.red,
                        hintText: 'Enter an Integer',
                        hintStyle: TextStyle(color: Colors.purpleAccent),
                        //labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.ssp,color: Colors.blue),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green[400], width: 5.0.w),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 5.0.w),
                        )),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 190.h),
                child: RaisedButton(
                    color: Colors.blue,
                    child: Text('Enter',
                    style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      setState(() {
                        status = "cover_eyes_out";
                        //Future.delayed(const Duration(seconds: 2));
                      });
                      Timer(Duration(seconds: 1), () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loading(number, 0)));
                      });
                     
                    }),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 400.h),
                child: RaisedButton(
                    color: Colors.greenAccent,
                    child: Text('Random Trivia'),
                    onPressed: () {
                      
                      setState(() {
                        status = "success";
                        //Future.delayed(const Duration(seconds: 2));
                      });
                  
                      Timer(Duration(seconds: 1), () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Loading( number, 1)));
                      });
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
