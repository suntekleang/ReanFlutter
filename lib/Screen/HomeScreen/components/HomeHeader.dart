import 'package:flutter/material.dart';

HomeHeader() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(children: [
      Container(
          margin: EdgeInsets.only(right: 10),
          color: Colors.red,
          height: 50,
          child: Image(
              image: NetworkImage(
                  "https://flutter.dev/images/flutter-mono-81x100.png"))),
      Text("Hello world")
    ]),
  );
}
