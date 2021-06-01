import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginButton extends StatelessWidget {
  final onPress;
  final double topMarg;
  final double botMarg;
  final String label = 'ورود';

  LoginButton({required this.onPress, this.topMarg = 10, this.botMarg = 0}) {}

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith(_resolveColor),
      textStyle: MaterialStateProperty.resolveWith(_resolveTextStyle),
      fixedSize: MaterialStateProperty.resolveWith((states) => Size(184, 46)),
      elevation: MaterialStateProperty.resolveWith((states) => 1.5),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
    );
  }

  Color _resolveColor(Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return Color(0xFF5AEF9C);
    }
    return Color(0xFF58DF7C);
  }

  TextStyle _resolveTextStyle(Set<MaterialState> states) {
    return TextStyle(fontFamily: 'BYekan', fontSize: 19);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: this.onPress,
        child: Text(label),
        style: _getButtonStyle(),
      ),
      margin: EdgeInsets.fromLTRB(0, this.topMarg, 0, this.botMarg),
    );
  }
}

class PhoneNumberField extends StatelessWidget {
  final double topMarg;
  final double botMarg;

  PhoneNumberField({
    this.topMarg = 10,
    this.botMarg = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x19000000), width: 0.7),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF58DF7C), width: 1.50),
              borderRadius: BorderRadius.circular(6),
            ),
            hintText: '9123456789',
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontFamily: 'BYekan',
              fontSize: 16,
            ),
            labelText: 'شماره تلفن',
            labelStyle: TextStyle(
              fontFamily: 'BYekan',
              fontSize: 16,
              color: Colors.grey.shade500,
            ),
            prefixText: '+98',
            prefixStyle: TextStyle(
              color: Colors.grey.shade600,
              fontFamily: 'BYekan',
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          keyboardType: TextInputType.phone,
          style: TextStyle(
            fontFamily: 'BYekan',
            color: Colors.black,
            fontSize: 16.5,
          ),
          cursorHeight: 25,
          cursorColor: Colors.grey.shade500,
          cursorRadius: Radius.circular(1),
          cursorWidth: 2,
          textDirection: TextDirection.ltr,
          // textAlign: TextAlign.right,
          textAlignVertical: TextAlignVertical.center,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10)
          ],
        ),
        elevation: 0.5,
        shape: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0x01000000), width: 0.2),
          borderRadius: BorderRadius.circular(6),
        ),
        type: MaterialType.canvas,
        shadowColor: Colors.grey.shade600,
      ),
      width: 320,
    );
  }
}

// class RegisterButton extends StatelessWidget {
//   final onPress;
//   final double topMarg;
//   final double botMarg;
//   final String label = 'ثبت نام';

//   RegisterButton({required this.onPress, this.topMarg = 10, this.botMarg = 0});

//   ButtonStyle _getButtonStyle() {
//     return ButtonStyle(
//       backgroundColor: MaterialStateProperty.resolveWith(_resolveColor),
//       foregroundColor:
//           MaterialStateProperty.resolveWith((states) => Color(0xFF58DF7C)),
//       textStyle: MaterialStateProperty.resolveWith(_resolveTextStyle),
//       fixedSize: MaterialStateProperty.resolveWith((states) => Size(184, 46)),
//       elevation: MaterialStateProperty.resolveWith((states) => 0),
//       shape: MaterialStateProperty.all(
//         RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(7.0),
//           side: BorderSide(
//             color: Color(0xFF58DF7C),
//             width: 1.2,
//           ),
//         ),
//       ),
//     );
//   }

//   Color _resolveColor(Set<MaterialState> states) {
//     if (states.contains(MaterialState.pressed)) {
//       return Color(0x5FDFDFDF);
//     }
//     return Color(0x00000000);
//   }

//   TextStyle _resolveTextStyle(Set<MaterialState> states) {
//     return TextStyle(
//       fontFamily: 'BYekan',
//       fontSize: 19,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(
//         onPressed: this.onPress,
//         child: Text(label),
//         style: _getButtonStyle(),
//       ),
//       margin: EdgeInsets.fromLTRB(0, this.topMarg, 0, this.botMarg),
//     );
//   }
// }
