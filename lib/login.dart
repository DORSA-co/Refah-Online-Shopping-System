import 'assets.dart';
import 'package:flutter/material.dart';

class InteractiveLoginPage extends StatefulWidget {
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

  final _loginButton = LoginButton(
    onPress: () => null,
    topMarg: 10,
    botMarg: 0,
  );

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

  final _loginButton = LoginButton(
    onPress: () => null,
    topMarg: 10,
    botMarg: 0,
  );

  final _phoneNumberField = PhoneNumberField();

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
                'قوانین رفاه را مطالعه کردم و با آنها موافقم',
                style: TextStyle(
                  fontFamily: 'BYekan',
                  fontSize: 14,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 10,
          ),
          _loginButton,
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
