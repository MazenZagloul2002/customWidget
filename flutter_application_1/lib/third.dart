import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.black,
              width: 350,
              height: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'sssssssssssssssssssssssssssssssssssssss',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('agree')),
                      ElevatedButton(
                          onPressed: () {}, child: Text('do not agree')),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: 350,
              height: 350,
              child: Column(
                children: [
                  Text('doctor: mohamed'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('data'), Icon(Icons.bed)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('data'), Icon(Icons.bed)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('data'), Icon(Icons.bed)],
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('agree')),
                      ElevatedButton(
                          onPressed: () {}, child: Text('do not agree')),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              width: 350,
              height: 350,
              child: Column(
                children: [
                  Text('sssssssssssssssssssssssssssssssssssssss'),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('agree')),
                      ElevatedButton(
                          onPressed: () {}, child: Text('do not agree')),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}