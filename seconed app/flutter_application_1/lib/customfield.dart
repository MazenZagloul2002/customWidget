import 'package:flutter/material.dart';
import 'package:flutter_application_1/2.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomWidget(),
    );
  }
}

class CustomWidget extends StatelessWidget {

  CustomWidget({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    submit() {
      if (email.text.contains('@') && password.text.isNotEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Success')));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Failed To Sumbit, Try Again')));
      }
      email.clear();
    }

    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network('https://t3.ftcdn.net/jpg/04/29/76/50/360_F_429765080_VVV2rHwZqfVUkmfjiDpb8L1nynxs9ijU.webp' ,width: 300 ),
             SizedBox(height: 40),
           CustomTextField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(Icons.email),
              obscuringCharacter: "*",
              labelText: "Email",
              obscureText: false,
            ),
            CustomTextField(
              controller: password,
              obscureText: true,
              obscuringCharacter: "#",
              maxLength: 20,
              hintText: "password",
              suffixIcon: const Icon(Icons.remove_red_eye),  
            ),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton(onPressed: submit, child: const Text('submit'))
          ],
        ),
      ),
    );
  }
}