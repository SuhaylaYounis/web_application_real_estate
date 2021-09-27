import 'package:appweb/widgets/main/projects_list.dart';
import 'package:appweb/widgets/main/recomendations_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_banner.dart';
import 'icon_info.dart';

class main_section extends StatelessWidget {
  const main_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          home_banner(),
          icon_info(),
          projects_list(),
          recomendations_list(),
        ],
      ),
    );
  }
}
