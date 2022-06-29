// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/views/home/home_page_body.dart';

class HomePage extends StatelessWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: const HomePageBody(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: kTextColor
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: kTextColor
        ),
        onPressed: () {},
      ),
      const SizedBox(
        width: kDefaultPaddin / 2,
      )
    ],
  );
}
