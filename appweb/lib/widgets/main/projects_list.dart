import 'package:appweb/constants.dart';
import 'package:appweb/models/projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../responsive.dart';

class projects_list extends StatelessWidget {
  const projects_list({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Our Projects", style: Theme
              .of(context)
              .textTheme
              .headline5),
          GridView.builder(
            //to be able to put list inside a column
              shrinkWrap: true,
              itemCount: demoProjects.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isDesktop(context)?3:2,
                crossAxisSpacing:Responsive.isDesktop(context)? kDefaultPadding:5,
                mainAxisSpacing: Responsive.isDesktop(context)? kDefaultPadding:5,
                childAspectRatio: 0.75,

              ),
              itemBuilder: (context, index)=>projectCard(
                projects: demoProjects[index],
              ))


        ],
      ),

    );
  }
}

class projectCard extends StatelessWidget {
final project projects ;

projectCard({required this.projects});

@override
  Widget build(BuildContext context) {
    return Container(
      color: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              projects.image!,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              projects.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Expanded(
              child: Text(
                projects.description!,
                style: TextStyle(height: 1.7),
              ),
            ),
            SizedBox(height: kDefaultPadding / 4),
            TextButton(
                onPressed: () {},
                child: Text(
                  "More info >",
                  style: TextStyle(color: kPrimaryColor),
                ))
          ],
        ),
      ),
    );
  }

}
