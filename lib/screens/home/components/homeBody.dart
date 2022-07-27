import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/constant.dart';

import 'custom_title_with_more_btn.dart';
import 'featured_plants.dart';
import 'recomend_plants.dart';
import 'top_header_with_search_bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(children: [
        TopHeaderWithSearchBar(size: size, theme: theme),
        CustomTitleWithMoreBtn(title: "Recommended", press: () {}),
        const RecomendPlants(),
        CustomTitleWithMoreBtn(title: "Featured Plants", press: () {}),
        const FeaturedPlants(),
        const SizedBox(
          height: kDefaultPadding,
        ),
      ]),
    );
  }
}
