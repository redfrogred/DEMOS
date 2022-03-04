// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/app_provider.dart';


class Boxes extends StatefulWidget {
  const Boxes({Key? key}) : super(key: key);

  @override
  State<Boxes> createState() => _BoxesState();
}

class _BoxesState extends State<Boxes> {
  @override
  Widget build(BuildContext context) {
    return const BoxesPage();
  }
}

class BoxesPage extends StatelessWidget {
  const BoxesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar (
        title: const Text('Boxes'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('1'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('2'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('3'),
                    ),
                  ),
                ),                            
              ],
            ),
          ),
          // row 2
Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.cyan,
                    child: Center(
                      child: Text('4'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text('5'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.teal,
                    child: Center(
                      child: Text('6'),
                    ),
                  ),
                ),                            
              ],
            ),
          ),
          // 3
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('7'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.yellow,
                    child: Center(
                      child: Text('8'),
                    ),
                  ),
                ),
          Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                    child: Center(
                      child: Text('9'),
                    ),
                  ),
                ),                            
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}