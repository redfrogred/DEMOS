// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../classes/utils.dart';
// import 'package:provider/provider.dart';
// import '../providers/app_provider.dart';


class GameCover extends StatefulWidget {
  const GameCover({Key? key}) : super(key: key);

  @override
  State<GameCover> createState() => _GameCoverState();
}

class _GameCoverState extends State<GameCover> {
  @override
  Widget build(BuildContext context) {
    return const GameCoverPage();
  }
}

class GameCoverPage extends StatelessWidget {
  const GameCoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0,0,0,50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,6),
                  child: Image.asset('./assets/images/gamebuilder_circus1.png'),
                ),
              ),             
              Padding(
                padding: const EdgeInsets.fromLTRB(0,40,0,40),
                child:   ElevatedButton.icon(
                  onPressed: () {
                  },
                  icon: const Icon( 
                    Icons.gamepad,
                    size: 35, 
                  ),  //icon data for elevated button
                  label: const Text(
                    " Play\nGame",
                    style: TextStyle( 
                      fontSize: 17, 
                      fontStyle: FontStyle.italic
                    )
                  ), //label text 
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    padding: const EdgeInsets.fromLTRB(20,20,20,20),
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,6),
                  child: Image.asset('./assets/images/powered_by_gamebuilder1.png'),
                ),
              ),            
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: Container(
                    color: Utils.colorMe(Colors.transparent, 1),
                    child: const Text(
                      'This choose-your-own adventure game was built with GameBuilder.',
                      style: TextStyle(
                        //fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF000000),
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}