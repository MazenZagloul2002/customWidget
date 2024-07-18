import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //تاخد widget وتشغلها
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
    // eqwrw
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() { // rebuild
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() { // rebuild
      _counter--;
    });
  }
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, 
        title: Text(widget.title),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed:_incrementCounter,child: Text('increment')),
            ElevatedButton(onPressed:_decrementCounter, child: Text('decrement')) 
            ,
            Text(
              'counter is $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
          
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCounter,
        tooltip: 'reset',
        child: const Icon(Icons.restart_alt),
      ), 
    );
  }
}
