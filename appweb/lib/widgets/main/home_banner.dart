import 'package:appweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../responsive.dart';

class home_banner extends StatelessWidget {
  const home_banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //to put multiple things over each other
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/cover.jpeg", fit: BoxFit.cover,),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text(
                      "Build a great future \n for all of us!",
                      style: Responsive.isDesktop(context)?
                      Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ):Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                    ),
              SizedBox(height: kDefaultPadding,),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor:kPrimaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: kDefaultPadding,
                      )
                    ),
                    onPressed: (){},
                    child: Text("CONTACT US",
                    style: TextStyle(color: Colors.white),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
