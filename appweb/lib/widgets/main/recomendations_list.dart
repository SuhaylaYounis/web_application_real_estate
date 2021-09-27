import 'package:appweb/constants.dart';
import 'package:appweb/models/recommendations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class recomendations_list extends StatelessWidget {
  const recomendations_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("Client recommendations",
              style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoRecomendations.length,
                    (index) => Padding(
                          padding: EdgeInsets.only(right: kDefaultPadding),
                          child: recommendationsCard(
                            recommendations: demoRecomendations[index],
                          ),
                        )),
              ))
        ],
      ),
    );
  }
}

class recommendationsCard extends StatelessWidget {
  final recommendation? recommendations;

  recommendationsCard({this.recommendations});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendations!.image!),
            ),
            title: Text(recommendations!.name!,
                style: Theme.of(context).textTheme.subtitle2),
            subtitle: Text(recommendations!.source!,
                style: Theme.of(context).textTheme.bodyText1),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            recommendations!.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
