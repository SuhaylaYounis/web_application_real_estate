import 'package:appweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class contact_info extends StatelessWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        buildContactInfo("email", "realestate@gmail.com"),
        buildContactInfo("address", "street 9 maadi"),
        buildContactInfo("mobile", "01003456789"),
        buildContactInfo("Location", "cairo,Egypt"),
        buildContactInfo("Website", "realestate.com"),

      ],
    );
  }
  Padding buildContactInfo(String title, String text){

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(title ,
            style: const TextStyle(color: Colors.white,),
          ),
          Text(text),
        ],
      ),
    );
}

}
