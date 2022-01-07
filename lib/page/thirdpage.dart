import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({ Key? key, this.stdID, this.stdName }) : super(key: key);
  final String? stdID;
  final String? stdName;

  @override
  _ThirdpageState createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('รหัสนิสิต ' + widget.stdID!,style: GoogleFonts.itim(
              fontSize:20,
               fontWeight:FontWeight.normal,
                color:Colors.black87,
            ),
          ),
            Text('ชื่อนิสิต ' + widget.stdName!,style: GoogleFonts.itim(
              fontSize:20,
               fontWeight:FontWeight.normal,
                color:Colors.black87,
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
                },
                child: const Text('กลับไปหน้าแรก'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}