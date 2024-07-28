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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Container(
              width: 300,
              height: 250,
              color: Colors.amber,
            ),
            SizedBox(width: 20),
            Container(
              width: 300,
              height: 250,
              color: const Color.fromARGB(255, 7, 57, 255),
            ),
            SizedBox(width: 20),
  
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