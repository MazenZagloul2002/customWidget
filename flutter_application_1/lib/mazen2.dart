import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQof2BgqkTGpr7AuecgF7_GFQXVntGioA61Zw&s',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.black,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mazen Zaghloul Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'college: BIS',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'age: 22',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'description: ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
