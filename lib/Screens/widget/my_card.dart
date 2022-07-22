import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatelessWidget {
 final String titel;
 final String subtitel;
 final IconData leadindIcon ;
 final IconData trailingIcon;
 final double marginCard ;
 final void Function() show;

   MyCard({
    Key? key,
    required this.titel,
     required this.subtitel,
     required this.leadindIcon,
     required this.trailingIcon,
     required this.show,
     this.marginCard =0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: marginCard),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          titel,
          style: GoogleFonts.amiri(),
        ),
        subtitle: Text(
          subtitel,
          style: GoogleFonts.amiri(),
        ),
        leading: Icon(leadindIcon),
        trailing: IconButton(onPressed: show, icon: Icon(trailingIcon),),
        onTap: show,
      ),
    );
  }
}
