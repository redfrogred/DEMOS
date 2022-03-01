// ignore_for_file: must_be_immutable, avoid_print, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import './classes/utils.dart';

class Cleaner extends StatefulWidget {
  const Cleaner({Key? key}) : super(key: key);

  @override
  State<Cleaner> createState() => _CleanerState();
}

class _CleanerState extends State<Cleaner> {
  @override
  Widget build(BuildContext context) {
    return CleanerPage();
  }
}

class CleanerPage extends StatefulWidget {


  CleanerPage({Key? key}) : super(key: key);

  @override
  State<CleanerPage> createState() => _CleanerPageState();
}

class _CleanerPageState extends State<CleanerPage> {
  final double _screenWidth = 0;

  double _screenHeight = 0;

  double? _getWidth (context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return _screenWidth;
  }

  double? _getHeight (context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return _screenHeight;
  }  

  double _returnWidth () {
    return _screenWidth;
  }

  double _returnHeight () {
    return _screenHeight;
  }

IconData _soundIcon = Icons.music_note;

  int _iconTypeIndex = 0;

  // IconData _soundIcon = Icons.music_note;
  final List _iconType = <IconData>[
    Icons.music_note,
    Icons.music_off,
  ];

  void _toggleSound() {
    if ( _iconTypeIndex == 0) {
      _iconTypeIndex = 1;
    }
    else { 
      _iconTypeIndex = 0;
    }
     setState(() {
      _soundIcon = _iconType[_iconTypeIndex];
    });
  }

  @override
  
 @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar (
        title: const Text('Lesson Book'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Row(  
            children: <Widget> [
              Container( 
                width: _getWidth(context),
                height: _getHeight(context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('./assets/images/page_0_1.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                  ),
                  color: Color(0xFFffffff),
                ),   
              ),  
            ]
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.transparent,
          ),    
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Visibility(
                          visible: false,//context.watch<Lesson>().getButtonPreviousVisibility(),
                          child: IconButton( 
                          icon: const Icon(Icons.arrow_circle_left),
                          color: Colors.blue,
                          iconSize: 36.0,
                          onPressed: () {
                            Utils.log('left IconButton clicked...');
                          },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Visibility(
                          visible: true,//context.watch<Lesson>().getButtonPreviousVisibility(),
                          child: IconButton( 
                            icon: const Icon(Icons.arrow_circle_right),
                            color: Colors.blue,
                            iconSize: 36.0,
                            onPressed: () {
                              Utils.log('right IconButton clicked...');
                            },
                          ),
                        ),
                      ),
                    ),                    
                  ],
                ),
              ),
              const Expanded(
                flex: 0,
                child: Text(' '),
              ),              
            ],
          ),  
        Positioned(
            top: 5,
            right: 1,
            height:50,
            width: 50,
            child: Container(
              child: Container(
                alignment: Alignment.topCenter,
                child: IconButton( 
                icon: Icon(_soundIcon), // music_off
                color: Colors.blue,
                iconSize: 36.0,
                onPressed: () {
                  Utils.log('sound IconButton clicked...');
                  _toggleSound();
                },
                ),
                color: Colors.transparent,// pink
              ),
            ),
          ),                           
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: const Color(0xFF03a9f4),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xFFbcd4e6),
      currentIndex: 0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.school_outlined),
          label: 'Lessons',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.games),
          label: 'Game',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About',
        ),
      ],
    ),
      
    );
  }
}