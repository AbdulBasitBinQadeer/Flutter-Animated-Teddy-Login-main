import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd6e2ea),
      appBar: AppBar(
        backgroundColor: const Color(0xffd6e2ea),
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left:10),
              child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 28,),
            )),
        centerTitle: true,
        title: Text(
          'HomeScreen',
          style: GoogleFonts.aBeeZee(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.house_fill, // Use CupertinoIcons properly
                color: Colors.deepPurpleAccent,
                size: 150,
              ),
            ],
          ),
          SizedBox(height: 80,)

        ],
      ),
    );
  }
}
