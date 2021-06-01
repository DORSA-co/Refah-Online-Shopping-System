import 'assets.dart';
import 'package:flutter/material.dart';
import 'scan_kart.dart';

class InteractiveLoginPage extends StatefulWidget {
  @override
  _InteractiveLoginPageState createState() => _InteractiveLoginPageState();
}

class _InteractiveLoginPageState extends State<InteractiveLoginPage> {
  bool _refahRulesAgreement = false;

  final _refahLogo = Image(
    image: AssetImage(r'assets/pic/Refah_logo2.png'),
    height: 110,
    alignment: Alignment.center,
  );

  final _dorsaLogo = Image(
    image: AssetImage(r'assets/pic/dorsa_logo.png'),
    height: 10,
    alignment: Alignment.bottomCenter,
  );

  // final _loginButton = LoginButton(
  //   onPress: (() {
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => ScanKart(),
  //         ));
  //   }),
  //   topMarg: 10,
  //   botMarg: 0,
  // );

  final _phoneNumberField = PhoneNumberField();

  Future<void> _showRulesDialogue() async {
    String rules =
        'قوانین فروشگاه رفاه\n این قوانین نوشته شده در تاریخ فلان به شماره فلان و به منظور جلوگیری از سو استفاده نامربوط می باشد.';

    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'قوانین رفاه',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'BYekan',
                fontWeight: FontWeight.bold,
              ),
              textDirection: TextDirection.rtl,
            ),
            content: Text(
              rules,
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'BYekan',
              ),
              textDirection: TextDirection.rtl,
            ),
            elevation: 4,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          _refahLogo,
          SizedBox(
            height: 60,
          ),
          _phoneNumberField,
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Checkbox(
                value: _refahRulesAgreement,
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null) _refahRulesAgreement = value;
                  });
                },
                focusColor: Theme.of(context).accentColor,
              ),
              Text(
                'را مطالعه کردم و آنها را قبول دارم',
                style: TextStyle(
                  fontFamily: 'BYekan',
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
                textDirection: TextDirection.rtl,
              ),
              TextButton(
                child: Text(
                  'قوانین رفاه',
                  style: TextStyle(
                    color: Colors.lightGreen.shade700,
                    fontFamily: 'BYekan',
                    fontSize: 14,
                  ),
                ),
                onPressed: () => _showRulesDialogue(),
                style: ButtonStyle(
                  alignment: Alignment.center,
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(left: 5, right: 5),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith((states) =>
                      states.contains(MaterialState.pressed)
                          ? Colors.lightGreen.shade100
                          : Colors.transparent),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 10,
          ),
          LoginButton(
            onPress: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanKart(),
                  ));
            }),
            topMarg: 10,
            botMarg: 0,
          ),
          SizedBox(
            height: 40,
          ),
          _dorsaLogo,
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

// class LogInPage extends StatelessWidget {
//   final _phoneNumberField = PhoneNumberField();

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         children: [
//           _refahLogo,
//           SizedBox(
//             height: 60,
//           ),
//           _phoneNumberField,
//           SizedBox(
//             height: 7,
//           ),
//           Row(
//             children: [
//               Checkbox(
//                 value: false,
//                 onChanged: (bool? value) {
//                   setState(() {});
//                 },
//                 focusColor: Theme.of(context).accentColor,
//               ),
//               Text(
//                 'قوانین رفاه را مطالعه کردم و با آنها موافقم',
//                 style: TextStyle(
//                   fontFamily: 'BYekan',
//                   fontSize: 14,
//                   color: Colors.grey.shade700,
//                 ),
//               ),
//             ],
//             mainAxisAlignment: MainAxisAlignment.center,
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           _loginButton,
//           SizedBox(
//             height: 40,
//           ),
//           _dorsaLogo,
//         ],
//         mainAxisAlignment: MainAxisAlignment.center,
//       ),
//     );
//   }
// }
