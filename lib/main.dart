import 'package:Number_trivia/output_page.dart';
import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'home.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        //'/loading': (context) => Loading(int number),
        '/home': (context) => Home(),
        '/output': (context) => Output(),
      },
    ));
// void main() => runApp(
//   DevicePreview(
//     enabled: !kReleaseMode,
//     builder: (context) => MyApp(),
//   ),
// );

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.of(context).locale, // <--- Add the locale
//       builder: DevicePreview.appBuilder, // <--- Add the builder
//       title: 'Flutter Demo',
      
//       home: Home(),
//     );
//   }
// }