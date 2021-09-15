// import 'package:flutter/material.dart';

// class ButtonWidget extends StatelessWidget {
//   final color;
//   final textColor;
//   final String buttonText;
//   final buttonTap;
//   const ButtonWidget(
//       {Key key, this.color, this.textColor, this.buttonText, this.buttonTap})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: buttonTap,
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: Container(
//             color: color,
//             child: Center(
//                 child: Text(
//               buttonText,
//               style: TextStyle(color: textColor),
//             )),
//           ),
//         ),
//       ),
//     );
//   }
// }
