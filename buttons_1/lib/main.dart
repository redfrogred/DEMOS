import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _appBarTitle = 'Button Gallery';

  void _updateAppBar ( String str) {
    setState(() {
      _appBarTitle = str;
    });
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_appBarTitle),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(60, 50,0,0),
                child: Text('Clickable Icons\n(wrapped in InkWell and GestureDetector)'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Flexible(
                          
                    child: InkWell(
                      child: const Icon(
                        Icons.arrow_circle_right,
                        color: Colors.blue,
                        size: 36.0,
                        semanticLabel: 'Navigation Next',
                      ),
                      onTap: () {
                        _updateAppBar('InkWell clicked');
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 24.0,
                        semanticLabel: 'Navigation Next',
                      ),
                      onTap: () {
                        _updateAppBar('GestureDetector clicked...');
                      },
                    ),)
                  
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(60, 10,0,0),
                child: Text('3 Button Types\n(as of 2022... some deprectaed yr before)'),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                       child: TextButton(
                          child: const Text('TextButton'),
                          onPressed: () {
                            _updateAppBar('TextButton clicked...');
                          },  
                       ), 
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: OutlinedButton( 
                        child: const Text('OutlinedButton'),
                        onPressed: () {
                          _updateAppBar('OutlinedButton clicked...');
                        },
                       )
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: ElevatedButton( 
                        child: const Text('ElevatedButton'),
                        onPressed: () {
                          _updateAppBar('ElevatedButton clicked...');
                        },
                       )
                    )
                  ),
                  Expanded(
                    child: Center(
                      child: IconButton( 
                          icon: const Icon(Icons.arrow_circle_right),
                          color: Colors.blue,
                          iconSize: 36.0,
                          onPressed: () {
                            _updateAppBar('IconButton clicked...');
                          },
                         ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: IconButton( 
                          icon: Icon(_soundIcon), // music_off
                          color: Colors.blue,
                          iconSize: 36.0,
                          onPressed: () {
                            _updateAppBar('IconButton clicked...');
                            _toggleSound();
                          },
                         ),
                    )
                  ),
                  const Expanded(
                    child: Center(child: Text('[ not used ]'))
                  ),
                ],
              ),
            ),                                    
          ],
        ),
      ),
    );
  }
}