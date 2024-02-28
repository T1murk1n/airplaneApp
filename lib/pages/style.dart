import 'package:flutter/material.dart';

final buttonStyle = ButtonStyle(
  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
  minimumSize: MaterialStateProperty.all(Size(400, 80)),
  shape: MaterialStateProperty.all(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular((20))
    )
  )
);

final titleText = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
);

final text = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  fontFamily: 'Roboto',
  color: Colors.black54,
);