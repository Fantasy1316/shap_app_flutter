import 'package:flutter/material.dart';
import 'package:shop_app_flutter/constants.dart';
import 'package:shop_app_flutter/models/Product.dart';
import 'package:shop_app_flutter/views/detail/detail_page_body_btm.dart';
import 'package:shop_app_flutter/views/detail/detail_page_body_counter.dart';
import 'package:shop_app_flutter/views/detail/detail_page_body_desc.dart';
import 'package:shop_app_flutter/views/detail/detail_page_body_outward.dart';
import 'package:shop_app_flutter/views/detail/detail_page_body_top.dart';

class DetailPageBody extends StatelessWidget {
  final Product product;

  const DetailPageBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin),
                  // height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      DetailPageBodyOutward(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      DetailPageBodyDesc(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      const DetailPageBodyCounter(),
                      const SizedBox(height: kDefaultPaddin / 2),
                      DetailPageBodyBtm(product: product)
                    ],
                  ),
                ),
                DetailPageBodyTop(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}