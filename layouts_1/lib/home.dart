// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/app_provider.dart';
import 'package:layouts_1/home.dart';
import 'package:layouts_1/rough.dart';
import 'package:layouts_1/cleaner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // Initial Selected Value
  String dropdownvalue = 'Layout Menu';   
  
  // List of items in our dropdown menu
  var items = [    
    'Layout Menu',
    'Rough Layout',
    'Cleaner Layout',
    'Item 4',
    'Item 5',
  ];

  // navigate using Drop Down
  void switchPage( String newValue ) {
    switch(newValue) {
      case 'Rough Layout':
        print('Rough Layout');
        Navigator.pushNamed(context, '/Rough');
        //Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
        break; // The switch statement must be told to exit, or it will execute every case.
      case 'Cleaner Layout':
        print('Cleaner Layout');
        Navigator.of(context).pushNamed('/Cleaner');
        break;
      default:
        print('Default Layout');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Menu"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Choose which layout to view:'),
            ),
            DropdownButton(
                
              // Initial DD Value
              value: dropdownvalue,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue = newValue!;
                  switchPage( newValue );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}