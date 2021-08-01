import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pachui_app/home_control.dart';

class Entry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 130),
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                height: 80.0,
              ),
              Text(
                'Pachui',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 35.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF04C58D),
                )),
              ),
              SizedBox(
                height: 30,
              ),
              //formulario de texto para CURP
              buildCurp(),
              SizedBox(
                height: 20,
              ),
              //formulario de texto para Telefono/email
              buildTelEmail(),
              SizedBox(
                height: 70,
              ),
              Directionality(
                textDirection: TextDirection.rtl, //lado del texto(left)
                child: RaisedButton.icon(
                  elevation: 10.0,
                  color: Color(0XFF04C58D),
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 18),
                  label: Text(
                    " Ingresar",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => HomeControl()));
                    print("Ingresar click");
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "¿Necesita ayuda?",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF102B4C)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("click ayuda");
                        },
                        child: Text(
                          'Click aqui',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w500,
                                color: Color(0XFF039F72)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //formulario de texto para CURP
  Widget buildCurp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'CURP',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF102B4C))),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0XFF04C58D),
                blurRadius: 1,
                offset: Offset(0, 0.3),
              )
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF102B4C))),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 14),
              hintText: 'Ingrese su curp',
              hintStyle: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }

  //formulario de texto para Telefono/email
  Widget buildTelEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Telefono o Email',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF102B4C))),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0XFF04C58D),
                blurRadius: 1,
                offset: Offset(0, 0.3),
              )
            ],
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF102B4C))),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 14),
              hintText: 'Ingrese su telefono o email',
              hintStyle: TextStyle(
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
