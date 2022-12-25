import 'package:flutter/material.dart';

class CreateWrap extends StatelessWidget {
  const CreateWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
        Text("a"),
      ]),
    );
  }
}
