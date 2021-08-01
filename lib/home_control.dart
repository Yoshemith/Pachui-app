import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pachui_app/account.dart';
import 'package:pachui_app/home.dart';
import 'package:pachui_app/qr_mode.dart';
import 'package:pachui_app/vaccine_history.dart';
import 'package:pachui_app/vaccine_information.dart';

class HomeControl extends StatefulWidget {
  @override
  _HomeControlState createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  int _selectedIndex = 0;
  List<Widget> _pages = [Home(), VacInfo(), QrMode(), VacHistory(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 55.0,
        buttonBackgroundColor: Color(0XFFE8F6F2),
        color: Color(0XFFE8F6F2),
        backgroundColor: Colors.transparent, //Color(0XFF29A3A8),
        index: _selectedIndex,
        items: [
          Icon(
            Icons.home,
            size: 32,
            color: Color(0XFF04C58D),
          ),
          Icon(
            Icons.info,
            size: 32,
            color: Color(0XFF04C58D),
          ),
          Icon(
            Icons.add_box,
            size: 32,
            color: Color(0XFF04C58D), //Colors.white,
          ),
          Icon(
            Icons.assignment,
            size: 32,
            color: Color(0XFF04C58D), //Colors.white,
          ),
          Icon(
            Icons.account_circle,
            size: 32,
            color: Color(0XFF04C58D), //Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInBack,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: _pages[_selectedIndex],
    );
  }

  Widget _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Color(0XFFE8F6F2),
      bottom: PreferredSize(
        child: Container(
          color: Colors.black38,
          height: 0.75,
        ),
        preferredSize: Size.fromHeight(0.5),
      ),
      //centerTitle: true,
      title: Text(
        'Pachui',
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 25.0,
          letterSpacing: 1.8,
          fontWeight: FontWeight.w500,
          color: Color(0XFF04C58D),
        )),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 8.0, bottom: 8.0),
        child: Image.asset(
          'assets/logo.png',
          height: 22,
        ),
      ),
    );
  }
}
