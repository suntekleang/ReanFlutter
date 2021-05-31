import 'package:flutter/material.dart';

HomeHeader() {
  return Container(
    color: Colors.blue,
    padding: EdgeInsets.all(15),
    child: Row(children: [
      Container(
          margin: EdgeInsets.only(right: 10),
          height: 30,
          child: Image(
              image: NetworkImage(
                  "https://flutter.dev/images/flutter-mono-81x100.png"))),
      Text(
        "Terizla",
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    ]),
  );
}
