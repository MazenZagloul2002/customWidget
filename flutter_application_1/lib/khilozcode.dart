import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          
        ),
        body: Center(
          child: TeamAWidget(),
        ),
      ),
    );
  }
}
 class TeamAWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text('Team A',style:TextStyle(fontSize:60,wordSpacing: 15,fontFamily: 'cursive',fontStyle:FontStyle.normal, )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 90,
              child:Image.network('data:image/png;base64,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'),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              child: Image.network('https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BpbmstbGFrZS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjgyOH19fQ=='),
            )
            
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 90,
              child: Image.network('https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BpbmstbGFrZS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjgyOH19fQ==') ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  child: Image.network('https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BpbmstbGFrZS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjgyOH19fQ==')
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Container(
                    width:90,     
                    height:90,
                    child:Image.network('https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL3BpbmstbGFrZS5qcGciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjgyOH19fQ==')
                      )
                  ],
                )       
              ],
            )
           
          ],
        ),
      ],
    );
  }
}