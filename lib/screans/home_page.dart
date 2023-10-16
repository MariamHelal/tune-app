import 'package:flutter/material.dart';
import '../Components/Catigory_item.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<Categories> category = [
    Categories(color: Colors.red, sound: 'note1.wav'),
    Categories(color: Colors.lightBlueAccent, sound: 'note2.wav'),
    Categories(color: Colors.pinkAccent, sound: 'note3.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Flutter Tune'),
        ),
        backgroundColor: Colors.black54,
      ),
      body: Column(
        // verticalDirection: VerticalDirection.up,
        // mainAxisSize: MainAxisSize.max,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.pinkAccent, sound: 'note1.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child:
                  Categories(color: Colors.white, sound: 'note2.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.limeAccent, sound: 'note3.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.orangeAccent, sound: 'note4.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.lightBlue, sound: 'note5.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.lightGreen, sound: 'note6.wav'),
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height/7,
              child: Categories(color: Colors.purple, sound: 'note7.wav'),
            ),
          ),
        ],
      ),
    );
  }
}
// List<Widget> getList(List<Categories> category){
//   List<Widget> itemList=[];
//   for(int i=0;i<category.length;i++){
//     itemList.add(Categories(color: color, sound: sound));
//   }
// }
