import 'package:flutter/material.dart';
import 'package:hornblasters/UI/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('HORN SOUNDS',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('VIDEOS & PICS',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('SHOP NOW',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('DEALER / INSTALLER LOCATOR',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                primary : P1,
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                onPrimary: P3,
                shadowColor: S1,
                elevation: 8,
              ),
              child: const Text('HELP CENTER',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: P5,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800
              ),),
            )),
          ],
        ),
      ],
    );
  }
}
