import 'dart:developer';
import 'package:flutter/material.dart';

Widget signButton({required String text, required Function onTap}) {
  return ElevatedButton(
    onPressed: () {
      onTap();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.yellow.withOpacity(0.9),
    ),
    child: SizedBox(
      height: 50,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Brand-Bold',
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
    ),
  );
}

Widget regButt({required String text, required Function onTap}) {
  return TextButton(
    onPressed: () {
      onTap();
    },
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Brand-Regular',
          color: Colors.black.withOpacity(0.7),
        ),
      ),
    ),
  );
}
