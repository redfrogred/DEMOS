import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Webview 2 Example'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Top Row is small',
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // margin: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(color: Colors.green),
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: WebView(
                  initialUrl: 'https://www.cnn.com/',
                  // Enable Javascript on WebView
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 18, 15, 22),
                  child: Text(
                    '^ The middle uses Webview and fetches www.cnn.com from the interweb!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
                // margin: const EdgeInsets.all(10.0),
                decoration: new BoxDecoration(color: Colors.green),
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}