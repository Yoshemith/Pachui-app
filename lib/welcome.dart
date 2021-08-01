import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pachui_app/entry.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/background.png',
            ),
            fit: BoxFit.contain,
            alignment: Alignment(1, 1),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 160,
            ),
            Image.asset(
              'assets/logo.png',
              height: 100.0,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Pachui',
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 40.0,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w500,
                          color: Color(
                              0XFF04C58D)) //Theme.of(context).textTheme.headline1,
                      ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Tu historial de vacunas, ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45 //Color(0XFF102B4C),
                        ),
                  ),
                ),
                Text(
                  'en un solo clic.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF102B4C),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              backgroundColor: Color(0XFF04C58D),
              radius: 25.0,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => Entry()));
                    print('Boton empecemos');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
