import 'package:bio_app_el/Screens/widget/my_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffC4D7E0),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Bio App',
          style: GoogleFonts.amiri(
            fontSize: 28,
            color: Color(0xff6E85B7),

          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu51XqkERN4KCU2HF526phPswwmMY9qjexFA&usqp=CAU'),
            radius: 60,
          ),
          Text(
            'Mohammed Shawqi Shaban',
            style: GoogleFonts.amiri(
              color: Color(0xff6E85B7),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            'Mohammed Shaban',
            style: GoogleFonts.amiri(
              color: Color(0xff6E85B7),
              fontSize: 22,
              fontStyle: FontStyle.italic
            ),
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            color: Color(0xff6E85B7),
            thickness: 1.5,
          ),
          MyCard(
              titel: 'Phone',
              subtitel: '+970592414965',
              leadindIcon: Icons.phone_android,
              trailingIcon: Icons.call,
              marginCard: 10,
              show: (){
                _showSnackBarmaseg(context, textmaseg: 'phone ...');
              }
          ),
          MyCard(
              titel: 'Email',
              subtitel: 'mohammed@gmail.com',
              leadindIcon: Icons.email,
              trailingIcon: Icons.send,
              marginCard: 10,
              show:  (){
                _showSnackBarmaseg(context, textmaseg: 'Email ...');
              }
          ),
          MyCard(
              titel: 'Location',
              subtitel: 'Gaza-ElNaser',
              leadindIcon: Icons.location_city_sharp,
              trailingIcon: Icons.maps_home_work,
              show: (){
                _showSnackBarmaseg(context, textmaseg: 'Location ...');
              }
          ),
        ],
      ),
    );
  }

  void _showSnackBarmaseg(BuildContext context, {required String textmaseg}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(textmaseg),
        backgroundColor: Color(0xff6E85B7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(30),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

