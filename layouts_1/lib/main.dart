// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'package:layouts_1/classes/config.dart';
import 'classes/utils.dart';
import 'providers/app_provider.dart';
import 'package:layouts_1/pages/all.dart';

void main() {
  //FlutterNativeSplash.removeAfter(init);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => App()),
      // ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() {
    // Flutter does not like me adding logic here... oh well...
    Utils.log('<< APP version ' + Config.getFullVersion() + ' loaded! >>');
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF03a9f4),
            foregroundColor: Color(0xFFffffff),
            iconTheme: IconThemeData(color: Color(0xFFffffff)),
            titleTextStyle: TextStyle(
              height: 1,
              fontSize: 21,
              fontFamily: 'Georgia',
            ),
          ),
          //fontFamily: 'Georgia',
          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
          ),          
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF0099ff)),
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            ),
          ),          
        ),
      // Screens / Routes      
      initialRoute: '/', routes: {
        '/': (context) => const Home(),
        '/Rough': (context) => const Rough(),
        '/Cleaner': (context) => const Cleaner(), 
        '/Sandbox': (context) => const Sandbox(), 
        '/Boxes': (context) => const Boxes(),
        '/GameCover': (context) => const GameCover(),
        '/Fullscreen': (context) => Fullscreen(),
      }
    );
  }
}