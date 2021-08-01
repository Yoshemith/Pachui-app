import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VacHistory extends StatefulWidget {
  //const Home({Key? key}) : super(key: k//ey);

  @override
  _VacHistoryState createState() => _VacHistoryState();
}

class _VacHistoryState extends State<VacHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 15),
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Historial de vacunacion',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.1,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF04C58D),
                    )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //EN ESTE CONTENEDOR SE ENCUENTRA LA LISTA DE ELEMENTOS (LISTVIEW)
                  Container(
                    //color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    //height: 500,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10, //postProvider.getPostInfos().length,
                      itemBuilder: (context, i) {
                        //return _createPostInfo(postProvider.getPostInfos()[i]);
                        return _createVacInfo();
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //AQUI SE CREAN LOS CONTENEDORES(ELEMENTOS) DE INFORMACION DE LA VACUNA
  Widget _createVacInfo() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
      child: Container(
        //color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        height: 125,
        decoration: BoxDecoration(
          color: Color(0XFFF5FDFF),
          borderRadius: BorderRadius.all(Radius.circular(24)),
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
              top: 5,
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
              top: 24,
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
              top: 42,
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
              top: 60,
              child: Text(
                'Lugar de Vacunacion',
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
              top: 80,
              child: Text(
                'Fecha',
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
      ),
    );
  }
}
