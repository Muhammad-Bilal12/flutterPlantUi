import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/detailsScreen.dart';

import '../../../constant.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantsCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            city: "Russia",
            price: "400",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecomendPlantsCard(
            image: "assets/images/image_2.png",
            title: "black rose",
            city: "Kashmir",
            price: "890",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecomendPlantsCard(
            image: "assets/images/image_3.png",
            title: "Angelica",
            city: "America",
            price: "440",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecomendPlantsCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            city: "Russia",
            price: "400",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendPlantsCard extends StatelessWidget {
  const RecomendPlantsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.city,
    required this.press,
  }) : super(key: key);

  final String image, title, city, price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      offset: const Offset(0, 10),
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: theme.textTheme.button,
                          ),
                          TextSpan(
                            text: "$city\n".toUpperCase(),
                            style: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)),
                          ),
                        ]),
                      ),
                      Text(
                        "\$$price",
                        style: theme.textTheme.button!
                            .copyWith(color: kPrimaryColor),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
