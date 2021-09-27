import 'package:appweb/constants.dart';
import 'package:appweb/widgets/menu/contact_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'goals.dart';
import 'logo.dart';

class side_menu_section extends StatelessWidget {
  const side_menu_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
      child: Column(
        children: [
          const logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children:  [
                contact_info(),
                Divider(),
                goals(),
                Divider(),
                SizedBox(height: kDefaultPadding),
                TextButton(onPressed: (){},
                    child: FittedBox(
                      child: Row(
                  children: [
                      SvgPicture.asset("assets/icons/download.svg"),
                      SizedBox(width: kDefaultPadding/2,),
                      Text("Download Brochure",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyText1!.color,
                        ),
                      ),
                  ],
                ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: kDefaultPadding*2),
                  color: kSecondaryColor,
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(onPressed: (){},
                          icon:SvgPicture.asset("assets/icons/dribble.svg"),

                      ),
                      IconButton(onPressed: (){},
                        icon:SvgPicture.asset("assets/icons/github.svg"),

                      ),
                      IconButton(onPressed: (){},
                        icon:SvgPicture.asset("assets/icons/linkedin.svg"),

                      ),
                      IconButton(onPressed: (){},
                        icon:SvgPicture.asset("assets/icons/twitter.svg"),

                      ),
                      Spacer(),
                    ],
                  ),

                )
              ],
            ),
          )),
        ],
      ),
    ));
  }
}
