import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Fullscreen extends StatefulWidget {
  Fullscreen({Key? key}) : super(key: key);

  @override
  State<Fullscreen> createState() => _FullscreenState();
}

class _FullscreenState extends State<Fullscreen> {
  @override
  void initState() {
    super.initState();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.bottom,
    // ]);
  }

  @override
  Widget build(BuildContext context) {
    return  FullscreenPage();
  }
}

class FullscreenPage extends StatefulWidget {
  @override
  State<FullscreenPage> createState() => _FullscreenPageState();
}

class _FullscreenPageState extends State<FullscreenPage> {
   //FullscreenPage({Key? key}) : super(key: key);
  late Future<void> screenDisplay;

  int _toggleIndex=0;

  List<String> _toggle = ['boom','unboom']; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar (
        title: const Text('Fullscreen '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            ElevatedButton(onPressed:() {
              setState(() { 
                if (_toggleIndex == 0) {
                  _toggleIndex = 1;  
                  screenDisplay = SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
                    SystemUiOverlay.bottom]);                   
                } 
                else {
                  _toggleIndex = 0;  
                  screenDisplay = SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);                  
                } 
              });
                 
            }, child: Text(_toggle[_toggleIndex]),),
            Center(
              child: Text('Fullscreen\nThis is taken from:\nhttps://www.kindacode.com/article/flutter-hiding-the-status-bar-on-ios-and-android/\nand\nhttps://www.youtube.com/watch?v=5NwUyE4aSMY'),
            ),
          ],
        ),
      ),
    );
  }
}