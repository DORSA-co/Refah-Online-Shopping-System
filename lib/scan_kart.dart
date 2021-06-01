import 'package:flutter/material.dart';
import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanKart extends StatelessWidget {
  String _scanBarcode = 'Unknown';

  final scan_me_img = Image(
    image: AssetImage(r'assets/pic/scan_img2.png'),
    height: 220,
    alignment: Alignment.center,
  );

  Future<void> scanQR() async {
    await Permission.camera.request();
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      this._scanBarcode = barcode;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            scan_me_img,
            SizedBox(
              height: 17,
            ),
            ElevatedButton(
              onPressed: () {
                scanQR().then((value) {
                  showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return QRCodeResultBox(
                          qrRes: _scanBarcode,
                        );
                      });
                });
              },
              child: Text('اسکن کنید'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFF40BF6A),
                ),
                textStyle: MaterialStateProperty.all(
                  TextStyle(
                    fontFamily: 'BYekan',
                    fontSize: 18,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                fixedSize: MaterialStateProperty.all(Size(150, 42)),
                elevation: MaterialStateProperty.all(1.5),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.0),
                  ),
                ),
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

class QRCodeResultBox extends StatelessWidget {
  final qrRes;
  QRCodeResultBox({Key? key, this.qrRes = "Nothing Received"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('نتیجه اسکن'),
      content: Text(qrRes),
    );
  }
}
