import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

class QrMode extends StatefulWidget {
  //const Home({Key? key}) : super(key: k//ey);

  @override
  _QrModeState createState() => _QrModeState();
}

class _QrModeState extends State<QrMode> {
  String qrCode = '[Vacuna Escaneada]';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(top: 65),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/qr-code.png',
              height: 100.0,
            ),
            SizedBox(
              height: 60,
            ),
            //formulario de texto para CURP
            Text(
              '!Escanea un codigo QR!',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF102B4C))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$qrCode',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 19,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF102B4C))),
            ),
            SizedBox(
              height: 80,
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
                icon: Icon(Icons.camera_alt, color: Colors.white, size: 18),
                label: Text(
                  "Scanear QR",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                onPressed: () => scanQRCode(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> scanQRCode() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancelar', true, ScanMode.QR);

      if (!mounted) return;
      setState(() {
        this.qrCode = qrCode;
      });
    } on PlatformException {
      qrCode = 'Error, Intente de nuevo';
    }
  }
}
