import 'package:Number_trivia/getTrivia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'getTrivia2.dart';

class Loading extends StatefulWidget {
  int flag;
  
  final int number;
  @override
  Loading(this.number,this.flag);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setData() async {
    
    Trivia trivia = Trivia(widget.number);
    await trivia.getData();
    Navigator.pushReplacementNamed(context, '/output', arguments: {
      'data': trivia.data,
      'number': widget.number,
    });
  }
  void setData2() async {
    Trivia2 trivia = Trivia2();
    await trivia.getData();    
    String des= trivia.data; 
    int s=des.indexOf('is'); 
    int number2= int.parse('${des.substring(0,s-1)}');
    Navigator.pushReplacementNamed(context, '/output', arguments: {
      'data': trivia.data,
      'number': number2,
    });
  }
   @override
  void initState() { 
    super.initState();
    if(widget.flag==0)setData();
    else
    setData2();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.blue,
            size: 80.0,
          ),
        ));
  }
}
