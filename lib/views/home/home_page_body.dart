// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';
import 'package:shop_app_flutter/views/detail/detail_page.dart';
import 'package:shop_app_flutter/views/home/home_page_body_card.dart';
import 'package:shop_app_flutter/views/home/home_page_body_categories.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          )
        ),
        const HomePageBodyCategories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.73
            ),
            itemBuilder: (context, index) => HomePageBodyCard(
              product: products[index],
              press: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(product: products[index])))
              }
            )
          ),
          ) 
        )
      ],
    );
  }
}
