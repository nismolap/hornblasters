import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(flex: 1,child: Container(),),
              Expanded(flex: 10,child: Image.asset(
                "assets/images/logo.png",
              ),),
              Expanded(flex: 1,child: Container(),),
            ],
          ),
        ],
      ),
    );
  }
}
