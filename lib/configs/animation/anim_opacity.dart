import 'package:flutter/cupertino.dart';

 class AnimOpacity extends StatefulWidget {
   const AnimOpacity({super.key});

   @override
   State<AnimOpacity> createState() => _AnimOpacityState();
 }

 class _AnimOpacityState extends State<AnimOpacity> {
   @override
   Widget build(BuildContext context) {
     return const Placeholder();
   }
 }

Future<Widget> animOpacity(Widget child)  async {
  bool isVisible = false;
  Future.delayed(Duration(milliseconds: 500), () {
      isVisible = true;
  });

  return AnimatedOpacity(
    opacity: isVisible ? 1.0 : 0.0, // Toggle opacity
    duration: Duration(seconds: 1),
    child: AnimatedPositioned(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
      bottom: isVisible ? 50 : -100, // Position from the bottom changes
      left: 20,
      right: 20,
      child: child
    ),
  );
}