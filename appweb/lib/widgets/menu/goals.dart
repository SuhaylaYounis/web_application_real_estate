import 'package:appweb/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class goals extends StatelessWidget {
  const goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          child: Text("Goals",
          style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        buildGoals('Planning stage'),
        buildGoals('Deveoplment stage'),
        buildGoals('Execution phase'),
        buildGoals('new way to living'),

      ],
    );
  }
  Padding buildGoals(String text){
return  Padding(
  padding: const EdgeInsets.only( bottom:kDefaultPadding/2 ),
  child: Row(
    children: [
      SvgPicture.asset("assets/icons/check.svg"),
      SizedBox(width: kDefaultPadding/2,),
      Text(text),
    ],
  ),
);
  }

}
