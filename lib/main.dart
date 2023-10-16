import 'package:flutter/material.dart';
import 'package:tune_app_course/screans/home_page.dart';

void main(){
  runApp(const TuneApp());
}
class TuneApp extends StatelessWidget {
  const TuneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}










































// import 'dart:convert';
//
// import 'package:bloc/bloc.dart';
// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   int _selectedIndex = 0;
//
//   // Declare some lists to store the options for each dropdown button
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (BuildContext context) => cubit()..readjson(),
//         child: BlocConsumer<cubit, States>(
//         builder: (context, state) {
//       return Scaffold(
//           bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//           icon: Icon(Icons.add_alert_rounded),
//     label: "alert",
//     backgroundColor: Colors.greenAccent,
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.chat_sharp),
//     label: 'message',
//     backgroundColor: Colors.greenAccent,
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.person),
//     label: 'person',
//     backgroundColor: Colors.greenAccent,
//     ),
//     BottomNavigationBarItem(
//     icon: Icon(Icons.home),
//     label: "home",
//     backgroundColor: Colors.greenAccent,
//     ),
//     ],
//     currentIndex: _selectedIndex,
//     selectedItemColor: Colors.black,
//     onTap: _onItemTapped,
//     ),
//     body: SafeArea(
//     child: Container(
//     width: MediaQuery.of(context).size.width,
//     height: MediaQuery.of(context).size.height,
//     color: Colors.greenAccent,
//     child: Column(
//     children: [
//     const Text(
//     "Drug search",
//     style: TextStyle(
//     color: Colors.black,
//     fontSize: 32.0,
//     fontWeight: FontWeight.bold,
//     ),
//     ),
//     const SizedBox(
//     height: 25.0,
//     ),
//     Container(
//     decoration: const BoxDecoration(
//     color: Colors.white,
//     borderRadius:
//     BorderRadius.all(Radius.circular(60))),
//     child: TextFormField(
//     onChanged: (value) {
//     cubit.get(context).search(value);
//     },
//       decoration: const InputDecoration(
//         hintText: 'Search',
//         border: OutlineInputBorder(
//             borderRadius:
//             BorderRadius.all(Radius.circular(20))),
//         suffixIcon: Icon(Icons.search),
//       ),
//     ),
//     ),
//         const SizedBox(height: 15.0),
//         if(cubit.get(context).result.isNotEmpty)
//           ConditionalBuilder(condition: state is! LoadingSearch, builder: (context)=>Expanded(
//           child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) => Padding(
//           padding: const EdgeInsets.all(20.0),
//     child: Container(
//     width: MediaQuery.of(context).size.width/1.3,
//     decoration: const BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.all(
//     Radius.circular(45))),
//     child:  SingleChildScrollView(
//     child: Column(
//     children: [
//     SizedBox(
//     height: 25,
//     ),
//     Text("Result" ,  style: TextStyle(
//     color: Colors.black,
//     fontSize: 24,
//     fontWeight: FontWeight.bold),) ,
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Row(
//     children: [
//     Text("ID : ") ,
//     Expanded(child: Text("${cubit.get(context).result[index]["id"]} " , maxLines: 4,)) ,
//     ],
//     ),
//     ) ,
//     SizedBox(height: 15,),
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Row(
//     children: [
//     Text("name : ") ,
//     Expanded(child: Text("${cubit.get(context).result[index]["tradename"]} " , maxLines: 4,)) ,
//     ],
//     ),
//     ) ,
//     SizedBox(height: 15,),
//     Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 10),
//     child: Row(
//     children: [
//     Text("price : ") ,
//     Expanded(child: Text("${cubit.get(context).result[index]["price"]} " , maxLines: 4,)) ,
//     ],
//     ),
//     ) ,
//     SizedBox(height: 15,),
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: [
//             Text("company : ") ,
//             Expanded(child: Text("${cubit.get(context).result[index]["company"]} " , maxLines: 4,)) ,
//           ],
//         ),
//       ) ,
//       SizedBox(height: 15,), Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: [
//             Text("group : ") ,
//             Expanded(child: Text("${cubit.get(context).result[index]["group"]} " , maxLines: 4,)) ,
//           ],
//         ),
//       ) ,
//       SizedBox(height: 15,), Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: [
//             Text("info : ") ,
//             Expanded(child: Text("${cubit.get(context).result[index]["info"]} " , maxLines: 4,)) ,
//           ],
//         ),
//       ) ,
//       SizedBox(height: 15,), Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: Row(
//           children: [
//             Text("form : ") ,
//             Expanded(child: Text("${cubit.get(context).result[index]["form"]} " , maxLines: 4,)) ,
//           ],
//         ),
//       ) ,
//
//     ],
//     ),
//     ),
//     ),
//           ),
//
//               itemCount: cubit.get(context).result.length),
//           ), fallback: (context)=>const Center(child: CircularProgressIndicator()))
//     ],
//     )),
//     ),
//       );
//         },
//             listener: (context, state) {}),
//     );
//   }
// }
//
// class cubit extends Cubit<States> {
//   cubit() : super(InitialState());
//
//   static cubit get(context) => BlocProvider.of(context);
//
//   List<dynamic> _items = [];
//
//   Future<void> readjson() async {
//     final dynamic response = await rootBundle.loadString('assets/Druge.json');
//     final dynamic data = await json.decode(response);
//     print("App");
//     _items = data;
//     print("..number of items ${_items[2]}");
//     emit(SuccessfullyReadData());
//   }
//
//   List<dynamic> result = [];
//
//   List search(String value) {
//     emit(LoadingSearch());
//     result = [];
//     for (int i = 0; i < _items.length; i++) {
//       if (_items[i]["tradename"].toString().contains(value)) {
//         print("-----------------------------------------${_items[i]}");
//         result.add(_items[i]);
//       }
//     }
//     emit(SuccessfullySearch());
//     return result;
//   }
// }
//
// abstract class States {}
//
// class InitialState extends States {}
//
// class SuccessfullyReadData extends States {}
// class LoadingSearch extends States {}
// class SuccessfullySearch extends States {}