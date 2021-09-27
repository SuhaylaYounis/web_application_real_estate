import 'package:appweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class icon_info extends StatelessWidget {
  const icon_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
              context: context,
              iconData: Icons.supervisor_account,
              text: "69+",
              label: "clients"),
          buildIconInfo(
              context: context,
              iconData: Icons.location_on,
              text: "169+",
              label: "Projects"),
          buildIconInfo(
              context: context,
              iconData: Icons.public,
              text: "30+",
              label: "Countries"),
          buildIconInfo(
              context: context,
              iconData: Icons.star,
              text: "14K+",
              label: "Stars"),
        ],
      ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData iconData,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          iconData,
          size: 50,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: kPrimaryColor, fontSize: 30),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
