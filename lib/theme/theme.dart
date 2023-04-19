import 'package:flutter/material.dart';

final ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
  primary: Colors.orange, // background color
  onPrimary: Colors.white, // foreground color
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  textStyle: myTextStyle,
);

final myTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 30,
  backgroundColor: Colors.orange,
  fontWeight: FontWeight.w600,
);

final customBoxDecorationStyle = BoxDecoration(
  borderRadius: BorderRadius.circular(23),
  boxShadow: [
    BoxShadow(
      color: Colors.orange[300]!,
      offset: Offset(4.0, 4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0,
    ),
    BoxShadow(
      color: Colors.orange[100]!,
      offset: Offset(-5.0, -4.0),
      blurRadius: 15.0,
      spreadRadius: 1.0,
    ),
  ],
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.orange[500]!,
      Colors.orange[400]!,
      Colors.green[900]!,
      Colors.orange[400]!,
      Colors.orange[500]!,
    ],
    stops: [0.1, 0.7, 0.1, 0.7, 0.8],
  ),
);

final loginBoxInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hoverColor: Colors.yellow,
  border: OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      color: Colors.red,
    ),
  ),
);

final myBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/bgp.jpg'),
    fit: BoxFit.cover,
  ),
);
