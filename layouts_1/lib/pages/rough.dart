// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';


class Rough extends StatefulWidget {
  const Rough({Key? key}) : super(key: key);

  @override
  State<Rough> createState() => _RoughState();
}

class _RoughState extends State<Rough> {
  @override
  Widget build(BuildContext context) {
    return RoughPage();
  }
}

class RoughPage extends StatelessWidget {

  final double _screenWidth = 0;
  double _screenHeight = 0;

  RoughPage({Key? key}) : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar (
        title: Text('Rough: width = ' + _screenWidth.toString()),
      ),
      body: Stack(
        children: <Widget>[
          Row(  
            children: <Widget> [
              Container( 
                width: _getWidth(context),
                height: _getHeight(context),
                color: Colors.green,
                child: Center(
                  child: const Text('MAIN CONTENT (Rough)')), 
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
                      child: Container(
                        child: Text('<-'),
                        color: Colors.red,
                        ),
                    ),
                    Expanded(
                      flex:1,
                      child: Container(
                        child: Align(
                          alignment: Alignment.centerRight, 
                          child: Text('->')
                        )
                      ),
                    ),                    
                  ],
                ),
              ),
              Expanded(
                flex: 0,
                child: Text('flex 1'),
              ),              
            ],
          ),  
        Positioned(
            top: 5,
            right: 5,
            height:50,
            width: 50,
            child: Container(
              color: Colors.black,
              child: Text(
                'Icon',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
              ),
            ),
          ),                           
        ]
      ),
    bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
        ),
      
    );
  }
}