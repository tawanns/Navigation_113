import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'thirdpage.dart';


class Secondpage extends StatefulWidget {
  const Secondpage({ Key? key }) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  
  final TextEditingController _name = new TextEditingController();
  final TextEditingController _stdid = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('Input Your Name&ID',style: GoogleFonts.itim(
               fontSize:20,
               fontWeight:FontWeight.bold,
                color:Colors.blueAccent,
               ),
              ), 
            nametextfield(),
            idtextfield(),
            ElevatedButton(
              onPressed: () {
                  Navigator.pop(context);
              },
              child: const Text('กลับไปหน้าแรก'),
              ),
            ElevatedButton (
              onPressed: () {
                var route = MaterialPageRoute(
                  builder:(context) => Thirdpage(
                  stdName: _name.text,
                  stdID: _stdid.text,
                  ),
                );
                  Navigator.push(context, route);  
                },
                child: const Text('ยืนยัน แล้วส่งค่าข้อมูลไปที่หน้าที่ 3'),
            ),
          ],
        ),
        ),
    );
  }

  Widget nametextfield() {
    return Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
            ),
          );
  }

  Widget idtextfield() {
    return Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: TextField(
              controller: _stdid,
              decoration: InputDecoration(
                labelText: 'ID',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                ),
              ),
            ),
          );
  }
}