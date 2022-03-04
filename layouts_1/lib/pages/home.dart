// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../classes/config.dart';
import '../classes/utils.dart';
import '../providers/app_provider.dart';

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

  @override
  void initState() {
    super.initState();
    Utils.log('initState()');
 }

 // reset needed values
 @override
 void dispose() {
   Utils.log('dispose()');
   super.dispose();
 } 
 
 final  FocusNode userIDFocus = FocusNode();
  
  // List of items in our dropdown menu
  var items = [    
    'Layout Menu',
    'Boxes',
    'Clemteach: Rough',
    'Clemteach: Clean',
    'Fullscreen',
    'GameCover',
    'Sandbox',
    /*
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 11',
    'Item 12',
    'Item 13',
    'Item 14',
    'Item 15',
    'Item 16',
    'Item 17',
    */
  ];

  // navigate using Drop Down
  void switchPage( String newValue ) {
    switch(newValue) {
      case 'Boxes':
        Utils.log('(method) switchPage() | /Boxes');
        Navigator.of(context).pushNamed('/Boxes');
        break;       
      case 'Clemteach: Rough':
        Utils.log('(method) switchPage() | /Rough');
        Navigator.pushNamed(context, '/Rough');
        break; // The switch statement must be told to exit, or it will execute every case.
      case 'GameCover':
        Utils.log('(method) switchPage() | /GameCover');
        Navigator.of(context).pushNamed('/GameCover');
        break;      
      case 'Clemteach: Clean':
        Utils.log('(method) switchPage() | /Cleaner');
        Navigator.of(context).pushNamed('/Cleaner');
        break;
      case 'Sandbox':
        Utils.log('(method) switchPage() | /Sandbox');
        Navigator.of(context).pushNamed('/Sandbox');
        break;      
      case 'Fullscreen':
        Utils.log('(method) switchPage() | /Fullscreen');
        Navigator.of(context).pushNamed('/Fullscreen');
        break;            
      default:
        Utils.log('(method) switchPage() | default (no action)');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    final app = context.read<App>();
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //   SystemUiOverlay.top,
    // ]);    
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts ' + Config.getFullVersion()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50,0,50,20),
              child: Image.asset('./assets/images/custom_layouts1.png'),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Choose which layout to view:'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,100),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                  color: const Color(0xFF999999), style: BorderStyle.solid, width: 1),
                ),
                child: DropdownButton(
                  underline: const SizedBox.shrink(),
                  // Initial DD Value
                  value: app.getMainDropdownvalue(),
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),    
                  isExpanded: true, //make true to make width 100%  
                  style: const TextStyle(  //te
                    color: Colors.black, //Font color
                    fontSize: 18 //font size on dropdown button
                  ),
                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) { 
                    
                    setState(() {
                      app.setMainDropdownvalue(newValue!);
                      switchPage( newValue );
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}