import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyAPP());
  
}
class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color.fromARGB(255, 250, 249, 249),
        child: SingleChildScrollView(
          child: Row (
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              width: 300,
              height: 250,
              color: Colors.amber,
              child: Image.network('https://th.bing.com/th/id/OIP.eXs-FBpitxTyu94fUI0K3wHaEo?w=298&h=186&c=7&r=0&o=5&pid=1.7'),
            ),
            Container(
              width: 300,
              height: 250,
              color: const Color.fromARGB(255, 7, 57, 255),
            ),
            Container(
              width: 300,
              height: 250,
              color: const Color.fromARGB(255, 4,  3, 0),    
            ),
           ],
          ),
        ),
      ),
    );
  }
}