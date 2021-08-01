import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VacInfo extends StatefulWidget {
  @override
  _VacInfoState createState() => _VacInfoState();
}

class _VacInfoState extends State<VacInfo> {
  // HAY 1 LISTA
  // *INFORMACION DE LAS VACUNAS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Container(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  //AQUI ESTA EL FORMULARIO DE BUSQUEDA
                  Container(
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Color(0XFFF5FDFF),
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
                        hintText: 'Ingrese su busqueda',
                        hintStyle: TextStyle(
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
                        return _createPostInfo();
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
  Widget _createPostInfo() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        //color: Colors.red,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        height: 155,
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
              top: 3,
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
              top: 20,
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
              top: 40,
              child: Container(
                //color: Colors.green.shade50,
                height: 72,
                width: 300,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text:
                        'Informacion de la vacuna en contexto lerom ipsum lerom ipsum Informacion de la vacuna en contexto lerom ipsum lerom xdx dxdxdxddx dxddx ipsum Informa',
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
            Positioned(
              left: 14,
              top: 114,
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
          ],
        ),
      ),
    );
  }
}
