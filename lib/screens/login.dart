import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Container(
          child: const Text('Peace'),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.green),
        ),
        Container(child: TextField()),
        Container(),
      ]),
    ));
  }
}
