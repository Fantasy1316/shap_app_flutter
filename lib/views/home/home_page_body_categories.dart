import 'package:flutter/material.dart';

import '../../constants.dart';

class HomePageBodyCategories extends StatefulWidget {
  const HomePageBodyCategories({Key? key}) : super(key: key);

  @override
  _HomePageBodyCategoriesState createState() => _HomePageBodyCategoriesState();
}

class _HomePageBodyCategoriesState extends State<HomePageBodyCategories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin), child: SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index)),
    )) ;
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: selectedIndex == index ? kTextColor : kTextLightColor),
            ),
            Container(
              width: 30,
              height: 2,
              margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}