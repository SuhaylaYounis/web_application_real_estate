import 'package:appweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             const Spacer(flex: 2,),
            const Image(
              image: AssetImage("assets/images/icon.png"),
              width: 100.0,
            ),
             const Spacer(),
            Text(
              "Real Estate ",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text("Modern Home with \n great interior design",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  //space between the text lines
                  height: 1.5,
                )),
             const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
