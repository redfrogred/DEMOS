import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class Lesson {
String html0_1 = r"""
  <div style="line-height: 1.1; padding: 2px; text-align: center; font-size: 110%;">
    
    <img src="asset:assets/images/lessons/0/3.png" style="float: left; with: 100px" width="100">
    Hello and Welcome! You are in the Lessons section. Click this "Next" button (the blue arrow) for a short introduction...
    <div style="height: 90px;"><br /></div>  

  </div>  
  """; 
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Lesson htm = Lesson();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bare bones Starter'),
        ),
        body: Center( 
                            child: Html(data: htm.html0_1,
                            onLinkTap: (url, _, __, ___) {
                                print('indeed!');
                              },     
                            ),
                          ),
      ),
    );
  }
}