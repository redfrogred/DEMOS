import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:provider/provider.dart';
import 'providers/app_provider.dart';
import 'package:layouts_1/home.dart';
import 'package:layouts_1/rough.dart';
import 'package:layouts_1/cleaner.dart';

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
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF009900),
            foregroundColor: Color(0xFFffffff),
            iconTheme: IconThemeData(color: Color(0xFFffffff)),
            titleTextStyle: TextStyle(
              height: 1,
              fontSize: 18,
            ),
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
      }
    );
  }
}