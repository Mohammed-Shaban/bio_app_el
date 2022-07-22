import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LauncScreen extends StatefulWidget {
  const LauncScreen({Key? key}) : super(key: key);

  @override
  State<LauncScreen> createState() => _LauncScreenState();
}

class _LauncScreenState extends State<LauncScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, '/bio_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffB2C8DF),
            Color(0xffC4D7E0),
          ],
        )),
        child: Text(
          'Bio App',
          style: GoogleFonts.amiri(
            color: const Color(0xff6E85B7),
            fontSize: 30
          ),
        ),
      ),
    );
  }
}
