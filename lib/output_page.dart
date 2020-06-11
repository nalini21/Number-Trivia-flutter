import 'package:Number_trivia/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Output extends StatelessWidget {
  Map opt = {};

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 2340, allowFontScaling: false);
    opt = ModalRoute.of(context).settings.arguments;
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData( size: 80.ssp),
            backgroundColor: Colors.black,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white.withOpacity(0.8),
                //color: Colors.blue
              ),
            ),
          ),
          body: Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              SizedBox(height: 120.h),
              Expanded(
                flex: 1,
                child: Text(
                  '${opt['number']}',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 250.ssp,
                      fontWeight: FontWeight.bold,
                       fontFamily: 'Montserrat'),
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.fromLTRB(70.w,0, 50.w, 0),
                  alignment: Alignment(0, -0.8),
                  child: Text(
                    '${opt['data']}',
                    style: TextStyle(color: Colors.greenAccent, fontSize: 100.ssp,
                    fontFamily: 'Quicksand',fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
