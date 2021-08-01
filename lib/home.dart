import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // HAY 3 LISTAS
  // NOTIFICACIONES - VACUNAS PENDIENTES - VACUNAS COVID
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Hola,",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.0,
                      letterSpacing: 1.8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  )),
              Text(
                "Usuario!",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Notificaciones",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //LA LISTA DE NOTIFICACIONES
              Container(
                height: 120,
                //color: Colors.grey.shade300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0XFFF5FDFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0XFF04C58D),
                            blurRadius: 1,
                            offset: Offset(0, 0.3),
                          )
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 14,
                            top: 10,
                            child: Text(
                              'DETALLES',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF20B9E2),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 32,
                            child: Container(
                              height: 80,
                              width: 120,
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                  text:
                                      'Informacion breve de la notificacion en contexto lerom ipsum lerom ipsum',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF7D8087),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Vacunas pendientes",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //LA LISTA DE PENDIENTES
              Container(
                height: 120,
                //color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0XFFF5FDFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0XFF04C58D),
                            blurRadius: 1,
                            offset: Offset(0, 0.3),
                          )
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 14,
                            top: 10,
                            child: Text(
                              'VACUNA X',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF20B9E2),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 32,
                            child: Text(
                              'Tipo de vacuna',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 52,
                            child: Text(
                              'Grado importancia',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 72,
                            child: Text(
                              'Fecha?',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Vacunas COVID",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.5,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              //LA LISTA DE VACUNAS COVID
              Container(
                height: 120,
                //color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0XFFF5FDFF),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0XFF04C58D),
                            blurRadius: 1,
                            offset: Offset(0, 0.3),
                          )
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 14,
                            top: 10,
                            child: Text(
                              'SINOVAC',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF20B9E2),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 32,
                            child: Text(
                              'Tipo de vacuna',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 52,
                            child: Text(
                              'Dosis 1 de 2',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 72,
                            child: Text(
                              'Grado importancia',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 92,
                            child: Text(
                              'Fecha?',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0XFF7D8087),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
