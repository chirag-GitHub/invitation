/// pin_code_fields: ^8.0.1
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class PinInputTextField extends StatefulWidget {
//   final FocusNode focusNode;
//   final TextEditingController controller;
//   final int? length;
//   final Function validator;
//   final Function onChanged;
//   final Function? onComplete;
//
//   @override
//   State<StatefulWidget> createState() {
//     return _PinInputTextField();
//   }
//
//   const PinInputTextField({
//     super.key,
//     required this.focusNode,
//     required this.controller,
//     this.length,
//     required this.validator,
//     required this.onChanged,
//     this.onComplete,
//   });
// }
//
// class _PinInputTextField extends State<PinInputTextField> {
//
//   @override
//   Widget build(BuildContext context) {
//     return PinCodeTextField(
//       controller: widget.controller,
//       autoFocus: true,
//       autoUnfocus: true,
//       focusNode: widget.focusNode,
//       scrollPadding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).viewInsets.bottom),
//       appContext: context,
//       length: widget.length ?? 4,
//       autoDisposeControllers: false,
//       autoDismissKeyboard: true,
//       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//       showCursor: false,
//
//       animationType: AnimationType.fade,
//       errorTextSpace: 30,
//       enablePinAutofill: false,
//       blinkWhenObscuring: true,
//       animationDuration: const Duration(milliseconds: 300),
//       blinkDuration: const Duration(milliseconds: 600),
//       obscureText: true,
//       obscuringWidget: Container(
//         height: 15.0,
//         width: 15.0,
//         decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.onSurface,
//           shape: BoxShape.circle,
//         ),
//       ),
//       onChanged: (value) {
//         widget.onChanged(value);
//       },
//       validator:(value) {
//         return widget.validator(value);
//       },
//       autovalidateMode: AutovalidateMode.onUnfocus,
//       keyboardAppearance: Theme.of(context).brightness,
//       keyboardType: TextInputType.number,
//       pinTheme: PinTheme(
//         shape: PinCodeFieldShape.box,
//         fieldHeight: 43,
//         fieldWidth: 60,
//         borderRadius: BorderRadius.circular(5),
//         activeColor: Theme.of(context).colorScheme.onSurface,
//         activeFillColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
//         inactiveColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
//         inactiveFillColor:
//             Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
//         selectedColor: Theme.of(context).primaryColor,
//         selectedFillColor:
//             Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
//       ),
//       enableActiveFill: true,
//       textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
//           color: Theme.of(context).colorScheme.onSurface, fontSize: 20),
//       // errorAnimationController: errorController,
//       // controller: controller.otpCnt,
//       // keyboardType: TextInputType.number,
//       onCompleted: (v) {
//         if(widget.onComplete!= null) {
//           widget.onComplete!(v);
//         }
//       },
//       beforeTextPaste: (text) {
//         debugPrint("Allowing to paste $text");
//         return true;
//       },
//     );
//   }
// }
