import 'package:flutter/material.dart';
import 'package:shop_app_flutter/models/Product.dart';

import '../../constants.dart';

class DetailPageBodyDesc extends StatelessWidget {
  final Product product;
  const DetailPageBodyDesc({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin
        ),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5)
      )
    );
  }
}
