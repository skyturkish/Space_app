import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget title;
  final Color primary;
  final double height;

  const StartButton({
    Key? key,
    required this.onPressed,
    required this.primary,
    required this.title,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //onSurface: Colors.green, --> all elevated button's surface
          primary: primary,
          shape: const StadiumBorder(),
        ),
        onPressed: onPressed,
        child: title,
      ),
    );
  }
}
