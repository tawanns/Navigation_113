import 'package:flutter/material.dart';

import 'secondpage.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({ Key? key }) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('My First Page'),
            ElevatedButton(
              onPressed: (){
                var route = MaterialPageRoute(
                  builder:(context) => Secondpage(),
                  );
                  Navigator.push(context, route);
              },
              child: const Text('ไปหน้าที่ 2'),
              ),
          ],
        ),
        ),
    );
  }
}
  